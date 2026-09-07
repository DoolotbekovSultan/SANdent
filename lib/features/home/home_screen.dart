import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_entity.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_status.dart';
import 'package:san_dent/features/appointment/presentation/cubit/appointment_cubit.dart';
import 'package:san_dent/features/appointment/presentation/widgets/appointment_card.dart';
import 'package:san_dent/features/appointment/presentation/widgets/month_calendar.dart';

/// Doctor's day schedule (design kept, data from [AppointmentCubit]).
///
/// The list shows appointments whose `date_time` falls on the selected
/// calendar day (client-side filter — the backend exposes no date filter).
/// TODO(F10): greet the actual user from `GET /me/` instead of the static text.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime _visibleMonth;
  late DateTime _selectedDate;

  AppointmentCubit get _cubit => context.read<AppointmentCubit>();

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _visibleMonth = DateTime(now.year, now.month, 1);
    _selectedDate = DateTime(now.year, now.month, now.day);
  }

  void _showActions(AppointmentEntity appointment) {
    final time = appointment.dateTime.toLocal();
    final dateLabel =
        '${time.day.toString().padLeft(2, '0')}.${time.month.toString().padLeft(2, '0')}.${time.year} '
        '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    showModalBottomSheet<void>(
      context: context,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appointment.patient?.fullName ??
                    'Пациент #${appointment.patientId}',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '$dateLabel • ${appointment.doctorName}'
                '${appointment.duration != null ? ' • ${appointment.duration} мин' : ''}',
                style: GoogleFonts.poppins(fontSize: 15),
              ),
              if (appointment.notes != null &&
                  appointment.notes!.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  appointment.notes!,
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ],
              const SizedBox(height: 8),
              Text(
                appointment.statusDisplay ??
                    AppointmentStatus.displayName(appointment.status),
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2773BB),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _ActionButton(
                      label: 'Отменить',
                      onTap: () => _runAndClose(
                        sheetContext,
                        () => _cubit.cancel(appointment.id),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _ActionButton(
                      label: 'Не пришёл',
                      onTap: () => _runAndClose(
                        sheetContext,
                        () => _cubit.noShow(appointment.id),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _ActionButton(
                      label: 'Завершить',
                      primary: true,
                      onTap: () => _runAndClose(
                        sheetContext,
                        () => _cubit.complete(appointment.id),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _runAndClose(
    BuildContext sheetContext,
    Future<bool> Function() action,
  ) async {
    final ok = await action();
    if (sheetContext.mounted && ok) Navigator.of(sheetContext).pop();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AppointmentCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AppointmentCubit, NexoAsyncState<List<AppointmentEntity>>>(
        listener: (context, state) {
          final failure = state.failureOrNull;
          if (failure != null) showFailureSnackBar(context, failure);
        },
        builder: (context, state) {
          final dayItems = AppointmentCubit.forDay(
            state.dataOrNull ?? const [],
            _selectedDate,
          )..sort((a, b) => a.dateTime.compareTo(b.dateTime));
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1622253692010-333f2da6031d?w=200&h=200&fit=crop&crop=faces',
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Добрый день',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF141414),
                    ),
                  ),
                  const SizedBox(height: 18),
                  MonthCalendar(
                    visibleMonth: _visibleMonth,
                    selectedDate: _selectedDate,
                    onDateSelected: (d) => setState(() => _selectedDate = d),
                    onPrevMonth: () => setState(
                      () => _visibleMonth = DateTime(
                        _visibleMonth.year,
                        _visibleMonth.month - 1,
                        1,
                      ),
                    ),
                    onNextMonth: () => setState(
                      () => _visibleMonth = DateTime(
                        _visibleMonth.year,
                        _visibleMonth.month + 1,
                        1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  switch (state) {
                    NexoAsyncLoading() => const Column(
                      children: [
                        AppointmentCardSkeleton(),
                        AppointmentCardSkeleton(),
                      ],
                    ),
                    NexoAsyncFailure(:final failure) => NexoFailureView(
                      failure: failure,
                      onRetry: () => cubit.retry(),
                    ),
                    _ => dayItems.isEmpty
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'На этот день приёмов нет',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color(0xFF7D8184),
                              ),
                            ),
                          )
                        : Column(
                            children: dayItems
                                .map(
                                  (a) => AppointmentCard(
                                    appointment: a,
                                    onTap: () => _showActions(a),
                                  ),
                                )
                                .toList(),
                          ),
                  },
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool primary;

  const _ActionButton({
    required this.label,
    required this.onTap,
    this.primary = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primary
              ? const Color(0xFF2773BB)
              : const Color(0xFFE4E4E7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: primary ? Colors.white : const Color(0xFF1A1A1A),
          ),
        ),
      ),
    );
  }
}

/// Gray placeholder card shown while the schedule loads.
class AppointmentCardSkeleton extends StatelessWidget {
  const AppointmentCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 64, height: 28, color: const Color(0xFFE4E4E7)),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                color: const Color(0xFFE4E4E7),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
