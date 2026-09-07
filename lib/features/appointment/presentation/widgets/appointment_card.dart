import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_entity.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_status.dart';

/// Day-schedule card: time + patient + status, stripe colored by status.
///
/// Status → color decision (AGENTS.md): scheduled blue, in_progress orange,
/// completed green, cancelled red, no_show grey, rescheduled purple.
class AppointmentCard extends StatelessWidget {
  final AppointmentEntity appointment;
  final VoidCallback? onTap;

  const AppointmentCard({super.key, required this.appointment, this.onTap});

  static const _styles = {
    AppointmentStatus.scheduled: (Color(0xFFC9E4FB), Color(0xFF4A7FB5)),
    AppointmentStatus.inProgress: (Color(0xFFFDE8C8), Color(0xFFF39C12)),
    AppointmentStatus.completed: (Color(0xFFD3F2DF), Color(0xFF2ECC71)),
    AppointmentStatus.cancelled: (Color(0xFFFBD3D3), Color(0xFFE0524F)),
    AppointmentStatus.noShow: (Color(0xFFE4E4E7), Color(0xFF9E9E9E)),
    AppointmentStatus.rescheduled: (Color(0xFFE8D9FB), Color(0xFF9B51E0)),
  };

  @override
  Widget build(BuildContext context) {
    final style = _styles[appointment.status] ??
        (const Color(0xFFE4E4E7), const Color(0xFF9E9E9E));
    const cardText = Color(0xFF141414);
    final time = appointment.dateTime.toLocal();
    final timeLabel =
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    final patientName =
        appointment.patient?.fullName ?? 'Пациент #${appointment.patientId}';
    final statusLabel =
        appointment.statusDisplay ??
        AppointmentStatus.displayName(appointment.status);
    final subtitle = appointment.duration != null
        ? '$statusLabel • ${appointment.duration} мин'
        : statusLabel;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 64,
              child: Text(
                timeLabel,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: cardText,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(width: 6, color: style.$2),
                      Expanded(
                        child: Container(
                          color: style.$1,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                patientName,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: cardText,
                                  height: 1.25,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: cardText,
                                  height: 1.25,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
