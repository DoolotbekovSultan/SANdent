import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/user/domain/entities/user_entity.dart';
import 'package:san_dent/features/user/presentation/cubit/doctors_cubit.dart';

/// Staff list (design kept, data from [DoctorsCubit]).
///
/// Backend-driven: name = `full_name` (fallback `username`), subtitle =
/// `role_display` (the backend has NO specialization field — cut),
/// status dot = `is_active` (green/red, as in the mock design).
class StaffScreen extends StatelessWidget {
  const StaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DoctorsCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Персонал',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1A1A),
                ),
              ),
            ),
            Expanded(
              child: NexoAsyncStateBuilder<List<UserEntity>>(
                state: cubit.state,
                loading: (_) => const NexoSkeletonList(itemCount: 5),
                success: (_, staff) {
                  if (staff.isEmpty) {
                    return const NexoEmptyView(
                      title: 'Нет сотрудников',
                      subtitle: 'Список пуст',
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: staff.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 16),
                    itemBuilder: (context, index) => _StaffTile(
                      member: staff[index],
                      onTap: () {
                        context.push(
                          '/admin/staff/${staff[index].id}',
                          extra: staff[index],
                        );
                      },
                    ),
                  );
                },
                failure: (_, failure) => NexoFailureView(
                  failure: failure,
                  onRetry: () => cubit.retry(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StaffTile extends StatelessWidget {
  final UserEntity member;
  final VoidCallback onTap;

  const _StaffTile({required this.member, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final statusColor = (member.isActive ?? false)
        ? const Color(0xFF2ECC71)
        : const Color(0xFFE0524F);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xFFD9D9D9),
            child: Icon(Icons.person, size: 32, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 82,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border(right: BorderSide(color: statusColor, width: 6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    member.displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color(0xFF1A1A1A),
                    ),
                  ),
                  Text(
                    member.roleDisplay ?? member.role ?? '',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color(0xFF1A1A1A),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
