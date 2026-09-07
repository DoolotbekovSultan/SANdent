import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_ui.dart';

import '../domain/entities/appointments_report_entity.dart';
import '../domain/entities/doctors_report_entity.dart';
import '../domain/entities/financial_report_entity.dart';
import '../domain/entities/materials_report_entity.dart';
import '../domain/entities/patients_report_entity.dart';
import 'cubit/report_cubits.dart';

/// Drill-down reports screen [UI-new] — director-only
/// (`GET /reports/<financial|doctors|patients|materials|appointments>/`;
/// other roles see an honest 403 failure view).
///
/// Created from zero: there is no corresponding mock screen. Visual language
/// follows [PatientsScreen]/admin home (Poppins, white cards, gray chips).
/// Every card shows a real backend field; breakdowns whose item shapes are
/// unknown (empty arrays on the server) render only when non-empty.
class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<FinancialReportCubit>()..load()),
        BlocProvider(create: (_) => getIt<DoctorsReportCubit>()..load()),
        BlocProvider(create: (_) => getIt<PatientsReportCubit>()..load()),
        BlocProvider(create: (_) => getIt<MaterialsReportCubit>()..load()),
        BlocProvider(create: (_) => getIt<AppointmentsReportCubit>()..load()),
      ],
      child: const _ReportsView(),
    );
  }
}

enum _ReportType {
  financial('Финансы'),
  doctors('Врачи'),
  patients('Пациенты'),
  materials('Материалы'),
  appointments('Приёмы');

  const _ReportType(this.label);

  final String label;
}

class _ReportsView extends StatefulWidget {
  const _ReportsView();

  @override
  State<_ReportsView> createState() => _ReportsViewState();
}

class _ReportsViewState extends State<_ReportsView> {
  _ReportType _selected = _ReportType.financial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Отчёты',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: .w800,
            fontSize: 17,
            letterSpacing: 1.02,
            height: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: .symmetric(horizontal: 16, vertical: 8),
              itemCount: _ReportType.values.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final type = _ReportType.values[index];
                return ChoiceChip(
                  label: Text(
                    type.label,
                    style: GoogleFonts.poppins(fontWeight: .w600),
                  ),
                  selected: _selected == type,
                  selectedColor: const Color(0xFF2773BB),
                  labelStyle: GoogleFonts.poppins(
                    color: _selected == type ? Colors.white : Colors.black,
                  ),
                  onSelected: (_) => setState(() => _selected = type),
                );
              },
            ),
          ),
          Expanded(
            child: switch (_selected) {
              _ReportType.financial => const _FinancialBody(),
              _ReportType.doctors => const _DoctorsBody(),
              _ReportType.patients => const _PatientsBody(),
              _ReportType.materials => const _MaterialsBody(),
              _ReportType.appointments => const _AppointmentsBody(),
            },
          ),
        ],
      ),
    );
  }
}

class _FinancialBody extends StatelessWidget {
  const _FinancialBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FinancialReportCubit>();
    return NexoAsyncStateBuilder<FinancialReportEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 5),
      success: (_, report) => _ReportList(
        days: report.days,
        cards: [
          ('Выручка', '${report.totalRevenue}'),
          ('Приёмов', '${report.totalAppointments}'),
          ('Средний чек', '${report.avgCheck}'),
          ('Затраты на материалы', '${report.materialCost}'),
          ('Прибыль', '${report.profit}'),
        ],
      ),
      failure: (_, failure) =>
          NexoFailureView(failure: failure, onRetry: () => cubit.retry()),
    );
  }
}

class _DoctorsBody extends StatelessWidget {
  const _DoctorsBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DoctorsReportCubit>();
    return NexoAsyncStateBuilder<DoctorsReportEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 5),
      success: (_, report) => _ReportList(
        days: report.days,
        cards: [('# Врачей', '${report.totalDoctors}')],
        children: [
          if (report.topDoctor != null) ...[
            const _SectionTitle('Лучший врач'),
            _DoctorStatCard(stat: report.topDoctor!),
          ],
          if (report.doctorStats.isNotEmpty) ...[
            const _SectionTitle('Статистика врачей'),
            for (final stat in report.doctorStats)
              _DoctorStatCard(stat: stat),
          ],
        ],
      ),
      failure: (_, failure) =>
          NexoFailureView(failure: failure, onRetry: () => cubit.retry()),
    );
  }
}

class _PatientsBody extends StatelessWidget {
  const _PatientsBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PatientsReportCubit>();
    return NexoAsyncStateBuilder<PatientsReportEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 5),
      success: (_, report) => _ReportList(
        days: report.days,
        cards: [
          ('Всего пациентов', '${report.totalPatients}'),
          ('Новых', '${report.newPatients}'),
          ('Активных', '${report.activePatients}'),
          ('Повторных', '${report.repeatPatients}'),
        ],
        children: [
          if (report.byAgeGroup.isNotEmpty) ...[
            const _SectionTitle('По возрасту'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final entry in report.byAgeGroup.entries)
                  Chip(
                    label: Text(
                      '${entry.key}: ${entry.value}',
                      style: GoogleFonts.poppins(fontWeight: .w600),
                    ),
                    backgroundColor: const Color(0xFFD9D9D9),
                  ),
              ],
            ),
          ],
        ],
      ),
      failure: (_, failure) =>
          NexoFailureView(failure: failure, onRetry: () => cubit.retry()),
    );
  }
}

class _MaterialsBody extends StatelessWidget {
  const _MaterialsBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MaterialsReportCubit>();
    return NexoAsyncStateBuilder<MaterialsReportEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 4),
      success: (_, report) => _ReportList(
        days: report.days,
        cards: [
          ('Израсходовано', '${report.totalMaterialsUsed}'),
          ('Количество', '${report.totalQuantity}'),
          ('Уникальных', '${report.uniqueMaterials}'),
        ],
      ),
      failure: (_, failure) =>
          NexoFailureView(failure: failure, onRetry: () => cubit.retry()),
    );
  }
}

class _AppointmentsBody extends StatelessWidget {
  const _AppointmentsBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AppointmentsReportCubit>();
    return NexoAsyncStateBuilder<AppointmentsReportEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 6),
      success: (_, report) => _ReportList(
        days: report.days,
        cards: [
          ('Всего', '${report.total}'),
          ('Завершено', '${report.completed}'),
          ('Запланировано', '${report.scheduled}'),
          ('В процессе', '${report.inProgress}'),
          ('Отменено', '${report.cancelled}'),
          ('Неявки', '${report.noShow}'),
          ('% завершения', '${report.completionRate}'),
          ('% отмен', '${report.cancellationRate}'),
        ],
      ),
      failure: (_, failure) =>
          NexoFailureView(failure: failure, onRetry: () => cubit.retry()),
    );
  }
}

class _ReportList extends StatelessWidget {
  final int days;
  final List<(String, String)> cards;
  final List<Widget> children;

  const _ReportList({
    required this.days,
    required this.cards,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: .symmetric(horizontal: 16, vertical: 8),
      children: [
        Text(
          'Период: $days дн.',
          style: GoogleFonts.poppins(
            color: const Color(0xFFB9B9BE),
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 8),
        for (final card in cards) _StatCard(title: card.$1, value: card.$2),
        ...children,
        const SizedBox(height: 16),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: .only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(14),
        border: Border.all(color: const Color(0xFFE6E6E6)),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xFFB9B9BE),
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: .w700,
              color: const Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;

  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(top: 8, bottom: 8),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: .w700),
      ),
    );
  }
}

class _DoctorStatCard extends StatelessWidget {
  final DoctorStatEntity stat;

  const _DoctorStatCard({required this.stat});

  @override
  Widget build(BuildContext context) {
    final name = (stat.doctorName ?? '').isEmpty
        ? 'Врач #${stat.doctorId}'
        : stat.doctorName!;
    return Container(
      width: double.infinity,
      margin: .only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(14),
        border: Border.all(color: const Color(0xFFE6E6E6)),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            name,
            style: GoogleFonts.poppins(fontSize: 16, fontWeight: .w700),
          ),
          const SizedBox(height: 8),
          Text(
            'Приёмов: ${stat.totalAppointments} · '
            'завершено: ${stat.completed} · '
            'отменено: ${stat.cancelled} · '
            'неявки: ${stat.noShow}',
            style: GoogleFonts.poppins(fontSize: 13),
          ),
          const SizedBox(height: 4),
          Text(
            'Пациентов: ${stat.uniquePatients} · '
            'процедур: ${stat.procedureCount}',
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: const Color(0xFFB9B9BE),
            ),
          ),
        ],
      ),
    );
  }
}
