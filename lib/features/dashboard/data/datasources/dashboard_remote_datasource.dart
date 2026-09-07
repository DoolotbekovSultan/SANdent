import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../models/dashboard_model.dart';
import 'i_remote_dashboard_data_source.dart';

/// Real dashboard API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteDashboardDataSource, env: [AppEnvironment.prod])
class DashboardRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteDashboardDataSource {
  DashboardRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<DashboardModel> getDashboard() async {
    final response = await get('reports/dashboard/');
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return DashboardModel.fromJson(data);
    }
    if (data is Map) {
      return DashboardModel.fromJson(Map<String, dynamic>.from(data));
    }
    throw StateError('Expected a JSON object from reports/dashboard/');
  }
}
