import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/clinic/domain/entities/clinic_entity.dart';
import 'package:san_dent/features/clinic/domain/parameters/create_clinic_params.dart';
import 'package:san_dent/features/clinic/domain/usecases/clinic_usecases.dart';
import 'package:san_dent/features/clinic/presentation/cubit/clinic_cubit.dart';

/// Clinics list — screen created from ZERO ([UI-new]): no clinics design
/// existed (server had 0 clinics until 2026-09-06). Visual language
/// follows `PatientsScreen`.
class ClinicsScreen extends StatelessWidget {
  const ClinicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ClinicCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 30, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Филиалы',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showCreateDialog(context, cubit),
          ),
        ],
      ),
      body: NexoAsyncStateBuilder<List<ClinicEntity>>(
        state: cubit.state,
        loading: (_) => const NexoSkeletonList(itemCount: 4),
        success: (_, clinics) {
          if (clinics.isEmpty) {
            return const NexoEmptyView(
              title: 'Нет филиалов',
              subtitle: 'Нажмите + чтобы добавить',
            );
          }
          return RefreshIndicator(
            onRefresh: () => cubit.refresh(),
            child: ListView.separated(
              padding: .symmetric(horizontal: 16, vertical: 16),
              itemCount: clinics.length,
              separatorBuilder: (_, _) => const SizedBox(height: 14),
              itemBuilder: (context, index) => _ClinicCard(
                clinic: clinics[index],
                onDelete: () async {
                  await context.read<DeleteClinicUseCase>()(clinics[index].id);
                  cubit.refresh();
                },
              ),
            ),
          );
        },
        failure: (_, failure) => NexoFailureView(
          failure: failure,
          onRetry: () => cubit.retry(),
        ),
      ),
    );
  }

  void _showCreateDialog(BuildContext context, ClinicCubit cubit) {
    final nameC = TextEditingController();
    final addrC = TextEditingController();
    final phoneC = TextEditingController();
    showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Новый филиал'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameC,
              decoration: const InputDecoration(labelText: 'Название'),
            ),
            TextField(
              controller: addrC,
              decoration: const InputDecoration(labelText: 'Адрес'),
            ),
            TextField(
              controller: phoneC,
              decoration: const InputDecoration(labelText: 'Телефон'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () async {
              final error = CreateClinicParams.validateName(nameC.text) ??
                  CreateClinicParams.validateAddress(addrC.text) ??
                  CreateClinicParams.validatePhone(phoneC.text);
              if (error != null) {
                ScaffoldMessenger.of(
                  ctx,
                ).showSnackBar(SnackBar(content: Text(error)));
                return;
              }
              await context.read<CreateClinicUseCase>()(
                CreateClinicParams(
                  name: nameC.text,
                  address: addrC.text,
                  phone: phoneC.text,
                ),
              );
              if (ctx.mounted) Navigator.pop(ctx);
              cubit.refresh();
            },
            child: const Text('Создать'),
          ),
        ],
      ),
    );
  }
}

class _ClinicCard extends StatelessWidget {
  final ClinicEntity clinic;
  final VoidCallback onDelete;

  const _ClinicCard({required this.clinic, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  clinic.name,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  clinic.address,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF555555),
                  ),
                ),
                Text(
                  clinic.phone,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF555555),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, color: Color(0xFFE0524F)),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
