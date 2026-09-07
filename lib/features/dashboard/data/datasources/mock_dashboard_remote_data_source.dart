import 'package:injectable/injectable.dart';

import '../../../../core/config.dart';
import '../models/dashboard_model.dart';
import 'i_remote_dashboard_data_source.dart';

/// Offline/mock dashboard backend.
@LazySingleton(as: IRemoteDashboardDataSource, env: [AppEnvironment.mock])
class MockDashboardRemoteDataSource implements IRemoteDashboardDataSource {
  @override
  Future<DashboardModel> getDashboard() async => const DashboardModel(
    today: DashboardTodayModel(
      date: '2026-09-06',
      appointments: 18,
      appointments_completed: 12,
      new_patients: 3,
      revenue: 45000,
      active_doctors: 5,
    ),
    week: DashboardWeekModel(
      start_date: '2026-08-30',
      appointments: 60,
      appointments_completed: 40,
    ),
    month: DashboardMonthModel(
      start_date: '2026-08-07',
      new_patients: 20,
      revenue: 300000,
    ),
    total: DashboardTotalModel(
      patients: 120,
      doctors: 8,
      materials_need_restock: 2,
      unread_notifications: 1,
    ),
    recent_appointments: null,
    recent_patients: null,
  );
}
