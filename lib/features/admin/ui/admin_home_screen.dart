import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_ui.dart';
import 'package:san_dent/features/dashboard/domain/entities/dashboard_entity.dart';
import 'package:san_dent/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:san_dent/features/user/domain/entities/stats_entity.dart';
import 'package:san_dent/features/user/presentation/cubit/stats_cubit.dart';

/// Admin home (design kept, data from [DashboardCubit] = director-only
/// `GET /reports/dashboard/`; other roles see an honest 403 failure view).
///
/// Backend-driven changes: the mock doctor card ("ИО/Специальность") is cut
/// (no such endpoint) — replaced with today's real breakdown; the static
/// urgent box now shows the real unread count and opens `/notifications`.
class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DashboardCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFF2773BB),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Color(0xFFD9D9D9),
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      'Здравствуйте',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1A1A1A),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: NexoAsyncStateBuilder<DashboardEntity>(
                state: cubit.state,
                loading: (_) => const NexoSkeletonList(itemCount: 4),
                success: (_, dashboard) => _DashboardBody(
                  dashboard: dashboard,
                ),
                failure: (_, _) => const _StatsFallback(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardBody extends StatelessWidget {
  final DashboardEntity dashboard;

  const _DashboardBody({required this.dashboard});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Показатели за сегодня',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: 'Выручка за сегодня',
                  value: '${dashboard.todayRevenue}',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  title: 'Всего приемов',
                  value: '${dashboard.todayAppointments}',
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: 'К заказу',
                  value: '${dashboard.totalNeedRestock}',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  title: 'Врачей',
                  value:
                      '${dashboard.todayActiveDoctors}/${dashboard.totalDoctors}',
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: 'Завершено',
                  value: '${dashboard.todayCompleted}',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  title: 'Новые пациенты',
                  value: '${dashboard.todayNewPatients}',
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _NoticeBox(
            unread: dashboard.totalUnread,
            onTap: () => context.push('/notifications'),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () => context.push('/admin/reports'),
              icon: const Icon(Icons.bar_chart),
              label: Text(
                'Отчёты',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF2773BB),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xFFB9B9BE),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoticeBox extends StatelessWidget {
  final int unread;
  final VoidCallback onTap;

  const _NoticeBox({required this.unread, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF3E0),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: unread > 0
                    ? const Color(0xFFFF9800)
                    : const Color(0xFF2ECC71),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                unread > 0
                    ? 'Непрочитанных: $unread'
                    : 'Новых уведомлений нет',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1A1A1A),
                  fontSize: 16,
                ),
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

/// Fallback when `GET /reports/dashboard/` fails (admin → 403):
/// global user stats (`GET /stats/`, admin/director 200).
class _StatsFallback extends StatelessWidget {
  const _StatsFallback();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<StatsCubit>()..load(),
      child: const _StatsFallbackView(),
    );
  }
}

class _StatsFallbackView extends StatelessWidget {
  const _StatsFallbackView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<StatsCubit>();
    return NexoAsyncStateBuilder<StatsEntity>(
      state: cubit.state,
      loading: (_) => const NexoSkeletonList(itemCount: 4),
      success: (_, stats) => SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Общая статистика',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    title: 'Пользователей',
                    value: '${stats.total}',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    title: 'Активных',
                    value: '${stats.active}',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    title: 'Новых за месяц',
                    value: '${stats.createdThisMonth}',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _StatCard(
                    title: 'Неактивных',
                    value: '${stats.inactive}',
                  ),
                ),
              ],
            ),
            if (stats.byRole.isNotEmpty) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final item in stats.byRole)
                    Chip(
                      label: Text(
                        '${item.role}: ${item.count}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1A1A1A),
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                ],
              ),
            ],
            const SizedBox(height: 16),
          ],
        ),
      ),
      failure: (_, failure) => NexoFailureView(
        failure: failure,
        onRetry: () => cubit.retry(),
      ),
    );
  }
}
