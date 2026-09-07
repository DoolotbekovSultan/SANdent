import 'package:injectable/injectable.dart';

import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/i_dashboard_repository.dart';
import '../datasources/i_remote_dashboard_data_source.dart';
import '../mappers/dashboard_mapper.dart';

@LazySingleton(as: IDashboardRepository)
class DashboardRepository implements IDashboardRepository {
  DashboardRepository({required this._remoteDatasource});

  final IRemoteDashboardDataSource _remoteDatasource;

  @override
  Future<DashboardEntity> getDashboard() async {
    final model = await _remoteDatasource.getDashboard();
    return model.toDomain();
  }
}
