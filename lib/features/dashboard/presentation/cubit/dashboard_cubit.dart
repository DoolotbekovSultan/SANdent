import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/dashboard_entity.dart';
import '../../domain/usecases/get_dashboard_usecase.dart';

/// Cubit using NexoAsyncCubit pattern.
/// State is `NexoAsyncState<T>` (idle/loading/success/failure).
/// Use .load() to fetch, .retry() after error, .refresh() for silent reload.
@injectable
class DashboardCubit extends NexoAsyncCubit<DashboardEntity> {
  DashboardCubit({required this._getDashboardUseCase});

  final GetDashboardUseCase _getDashboardUseCase;

  @override
  Future<Result<DashboardEntity>> fetch() => _getDashboardUseCase(const NoParams());
}
