import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/dashboard_entity.dart';
import '../repositories/i_dashboard_repository.dart';

@injectable
class GetDashboardUseCase extends NexoUseCase<DashboardEntity, NoParams> {
  // ignore: use_super_parameters
  GetDashboardUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IDashboardRepository _repository;

  @override
  Future<DashboardEntity> execute(NoParams params) {
    return _repository.getDashboard();
  }
}
