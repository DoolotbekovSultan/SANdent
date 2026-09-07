import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/appointment_entity.dart';
import '../../domain/usecases/appointment_usecases.dart';
import '../../domain/usecases/get_appointment_usecase.dart';

/// Day-schedule state machine.
///
/// `fetch()` loads page 1 (ordered by `date_time`); [loadMore] appends;
/// [runAction] executes a status action (cancel/complete/no-show) and
/// reloads the list. Day filtering happens on screen from [forDay].
@injectable
class AppointmentCubit extends NexoAsyncCubit<List<AppointmentEntity>> {
  AppointmentCubit({
    required this._getAppointmentsUseCase,
    required this._cancelAppointmentUseCase,
    required this._completeAppointmentUseCase,
    required this._noShowAppointmentUseCase,
  });

  final GetAppointmentsUseCase _getAppointmentsUseCase;
  final CancelAppointmentUseCase _cancelAppointmentUseCase;
  final CompleteAppointmentUseCase _completeAppointmentUseCase;
  final NoShowAppointmentUseCase _noShowAppointmentUseCase;

  int _page = 1;
  bool _hasMore = false;
  bool _loadingMore = false;

  bool get hasMore => _hasMore;

  @override
  Future<Result<List<AppointmentEntity>>> fetch() async {
    _page = 1;
    final result = await _getAppointmentsUseCase(
      const AppointmentsPageParams(),
    );
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        _hasMore = value.hasMore;
        return Right(value.items);
    }
  }

  Future<void> loadMore() async {
    if (isClosed || _loadingMore || !_hasMore) return;
    final current = state.dataOrNull ?? const <AppointmentEntity>[];
    _loadingMore = true;
    try {
      final result = await _getAppointmentsUseCase(
        AppointmentsPageParams(page: _page + 1),
      );
      if (isClosed) return;
      switch (result) {
        case Left(:final failure):
          onFailure?.call(failure);
        case Right(:final value):
          _page += 1;
          _hasMore = value.hasMore;
          emit(NexoAsyncSuccess([...current, ...value.items]));
      }
    } finally {
      _loadingMore = false;
    }
  }

  Future<bool> runAction(
    Future<Result<AppointmentEntity>> Function() action,
  ) async {
    final result = await action();
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        return false;
      case Right():
        await load();
        return true;
    }
  }

  Future<bool> cancel(int id) =>
      runAction(() => _cancelAppointmentUseCase(id));

  Future<bool> complete(int id) =>
      runAction(() => _completeAppointmentUseCase(id));

  Future<bool> noShow(int id) =>
      runAction(() => _noShowAppointmentUseCase(id));

  /// Appointments falling on [day] (calendar day in local time).
  static List<AppointmentEntity> forDay(
    List<AppointmentEntity> items,
    DateTime day,
  ) {
    return items.where((a) {
      final local = a.dateTime.toLocal();
      return local.year == day.year &&
          local.month == day.month &&
          local.day == day.day;
    }).toList();
  }
}
