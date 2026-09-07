import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_entity.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_status.dart';
import 'package:san_dent/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:san_dent/features/user/domain/entities/user_entity.dart';

/// Doctor detail (design kept, data from [UserEntity]).
///
/// The static mock schedule is replaced with the doctor's real appointments
/// (filtered client-side by `doctorId`); the empty state is honest —
/// the backend currently holds no appointments (create → 500, reported).
class DoctorDetailScreen extends StatelessWidget {
  final UserEntity member;

  const DoctorDetailScreen({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AppointmentCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        foregroundColor: const Color(0xFF1A1A1A),
        centerTitle: true,
        title: Text(
          member.displayName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1A1A1A),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFFD9D9D9),
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                member.displayName,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: Text(
                [
                  if ((member.roleDisplay ?? '').isNotEmpty)
                    member.roleDisplay!,
                  if ((member.phone ?? '').isNotEmpty) member.phone!,
                ].join(' • ',
                ),
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xFFB9B9BE),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Приёмы',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 12),
            NexoAsyncStateBuilder<List<AppointmentEntity>>(
              state: cubit.state,
              loading: (_) => const NexoSkeletonList(itemCount: 2),
              success: (_, items) {
                final own = items
                    .where((a) => a.doctorId == member.id)
                    .toList()
                  ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
                if (own.isEmpty) {
                  return const NexoEmptyView(
                    title: 'Приёмов нет',
                    subtitle: 'У врача пока нет записей',
                  );
                }
                return Column(
                  children: own
                      .map((a) => _ScheduleItem(appointment: a))
                      .toList(),
                );
              },
              failure: (_, failure) => NexoFailureView(
                failure: failure,
                onRetry: () => cubit.retry(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScheduleItem extends StatelessWidget {
  final AppointmentEntity appointment;

  const _ScheduleItem({required this.appointment});

  @override
  Widget build(BuildContext context) {
    final style = switch (appointment.status) {
      AppointmentStatus.completed => (
        const Color(0xFFD3F2DF),
        const Color(0xFF2ECC71),
      ),
      AppointmentStatus.cancelled => (
        const Color(0xFFFBD3D3),
        const Color(0xFFE0524F),
      ),
      _ => (const Color(0xFFC9E4FB), const Color(0xFF4A7FB5)),
    };
    final time = appointment.dateTime.toLocal();
    final label =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    final title =
        appointment.patient?.fullName ?? 'Пациент #${appointment.patientId}';
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 56,
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1A1A1A),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Container(width: 5, color: style.$2),
                    Expanded(
                      child: Container(
                        color: style.$1,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        child: Text(
                          title,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF141414),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
