import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/dashboard/data/datasources/i_remote_dashboard_data_source.dart';
import 'package:san_dent/features/dashboard/data/mappers/dashboard_mapper.dart';
import 'package:san_dent/features/dashboard/data/models/dashboard_model.dart';
import 'package:san_dent/features/dashboard/data/repositories/dashboard_repository.dart';
import 'package:san_dent/features/dashboard/domain/usecases/get_dashboard_usecase.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `GET /reports/dashboard/` (director, 200).
const _dashJson = <String, dynamic>{
  'today': {
    'date': '2026-09-06',
    'appointments': 0,
    'appointments_completed': 0,
    'new_patients': 0,
    'revenue': 0.0,
    'active_doctors': 0,
  },
  'week': {
    'start_date': '2026-08-30',
    'appointments': 0,
    'appointments_completed': 0,
  },
  'month': {'start_date': '2026-08-07', 'new_patients': 0, 'revenue': 0.0},
  'total': {
    'patients': 0,
    'doctors': 4,
    'materials_need_restock': 0,
    'unread_notifications': 0,
  },
  'recent_appointments': [],
  'recent_patients': [],
};

class FakeRemote implements IRemoteDashboardDataSource {
  @override
  Future<DashboardModel> getDashboard() async =>
      DashboardModel.fromJson(_dashJson);
}

void main() {
  test('DashboardMapper maps nested blocks', () {
    final entity = DashboardModel.fromJson(_dashJson).toDomain();

    expect(entity.todayDate, '2026-09-06');
    expect(entity.todayRevenue, 0.0);
    expect(entity.totalDoctors, 4);
    expect(entity.totalUnread, 0);
  });

  test('GetDashboardUseCase returns entity', () async {
    final repository = DashboardRepository(
      remoteDatasource: FakeRemote(),
    );
    final result = await GetDashboardUseCase(
      _logger(),
      repository: repository,
    )(const NoParams());

    expect(result.dataOrThrow().todayAppointments, 0);
  });
}
