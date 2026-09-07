import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/stats_entity.dart';
import '../../domain/usecases/user_usecases.dart';

/// Global user stats (`GET /stats/`, admin/director; doctor → 403).
/// Feeds the admin-home fallback block (F10 lives in this feature too —
/// one canonical `User` type, `Stats` is a separate read-only entity).
@injectable
class StatsCubit extends NexoAsyncCubit<StatsEntity> {
  StatsCubit({required this._useCase});

  final GetStatsUseCase _useCase;

  @override
  Future<Result<StatsEntity>> fetch() => _useCase(const NoParams());
}
