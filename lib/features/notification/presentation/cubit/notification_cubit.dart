import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/notification_entity.dart';
import '../../domain/usecases/notification_usecases.dart';

/// Notifications inbox state machine with mark-read + load-more.
@injectable
class NotificationCubit extends NexoAsyncCubit<List<NotificationEntity>> {
  NotificationCubit({
    required this._getNotificationsUseCase,
    required this._markReadUseCase,
    required this._markAllReadUseCase,
  });

  final GetNotificationsUseCase _getNotificationsUseCase;
  final MarkNotificationsReadUseCase _markReadUseCase;
  final MarkAllNotificationsReadUseCase _markAllReadUseCase;

  int _page = 1;
  bool _hasMore = false;
  bool _loadingMore = false;

  bool get hasMore => _hasMore;

  @override
  Future<Result<List<NotificationEntity>>> fetch() async {
    _page = 1;
    final result = await _getNotificationsUseCase(1);
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
    final current = state.dataOrNull ?? const <NotificationEntity>[];
    _loadingMore = true;
    try {
      final result = await _getNotificationsUseCase(_page + 1);
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

  /// Marks one notification read and refreshes the list.
  Future<void> markRead(int id) async {
    final result = await _markReadUseCase([id]);
    if (isClosed) return;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
      case Right():
        await load();
    }
  }

  /// Marks everything read and refreshes the list.
  Future<void> markAllRead() async {
    final result = await _markAllReadUseCase(const NoParams());
    if (isClosed) return;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
      case Right():
        await load();
    }
  }
}
