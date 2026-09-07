import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/notification_entity.dart';
import '../repositories/i_notification_repository.dart';

/// Paged notifications (`GET notifications/`).
@injectable
class GetNotificationsUseCase
    extends NexoUseCase<PageChunk<NotificationEntity, int>, int> {
  // ignore: use_super_parameters
  GetNotificationsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final INotificationRepository _repository;

  @override
  Future<PageChunk<NotificationEntity, int>> execute(int params) =>
      _repository.getNotifications(page: params);
}

/// Marks notifications read (`POST notifications/mark-read/`).
@injectable
class MarkNotificationsReadUseCase extends NexoUseCase<void, List<int>> {
  // ignore: use_super_parameters
  MarkNotificationsReadUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final INotificationRepository _repository;

  @override
  Future<void> execute(List<int> params) => _repository.markRead(params);
}

/// Marks all notifications read (`POST notifications/mark-all-read/`).
@injectable
class MarkAllNotificationsReadUseCase extends NexoUseCase<void, NoParams> {
  // ignore: use_super_parameters
  MarkAllNotificationsReadUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final INotificationRepository _repository;

  @override
  Future<void> execute(NoParams params) => _repository.markAllRead();
}

/// Deletes a notification (`DELETE notifications/{id}/`).
@injectable
class DeleteNotificationUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteNotificationUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final INotificationRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteNotification(params);
}
