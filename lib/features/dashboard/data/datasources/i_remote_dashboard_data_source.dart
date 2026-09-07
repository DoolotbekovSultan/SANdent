import '../models/dashboard_model.dart';

/// Dashboard API (base `.../api/v1/`).
///
/// Live-verified (director 200; admin/doctor → 403):
/// `GET reports/dashboard/` → [DashboardModel].
abstract interface class IRemoteDashboardDataSource {
  Future<DashboardModel> getDashboard();
}
