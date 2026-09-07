import '../../domain/entities/dashboard_entity.dart';

abstract interface class IDashboardRepository {
  Future<DashboardEntity> getDashboard();
}
