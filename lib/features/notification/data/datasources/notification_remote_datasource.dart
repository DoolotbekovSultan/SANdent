import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/notification_model.dart';
import 'i_remote_notification_data_source.dart';

/// Real notifications API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteNotificationDataSource, env: [AppEnvironment.prod])
class NotificationRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteNotificationDataSource {
  NotificationRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<NotificationModel, int>> getNotifications({
    required int page,
  }) async {
    final response = await get(
      'notifications/',
      queryParameters: {'page': page},
    );
    return parsePage(response.data, NotificationModel.fromJson, page: page);
  }

  @override
  Future<NotificationModel> getNotificationById(int id) async {
    final response = await get('notifications/$id/');
    return NotificationModel.fromJson(
      _asMap(response.data, 'notifications/$id/'),
    );
  }

  @override
  Future<void> markRead(List<int> ids) async {
    await post('notifications/mark-read/', data: {'notification_ids': ids});
  }

  @override
  Future<void> markAllRead() async {
    await post('notifications/mark-all-read/');
  }

  @override
  Future<void> deleteNotification(int id) async {
    await delete('notifications/$id/');
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
