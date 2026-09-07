import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/appointment_model.dart';
import '../models/available_slots_model.dart';
import 'i_remote_appointment_data_source.dart';

/// Real appointment API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteAppointmentDataSource, env: [AppEnvironment.prod])
class AppointmentRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteAppointmentDataSource {
  AppointmentRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<AppointmentModel, int>> getAppointments({
    required int page,
    String? search,
  }) async {
    final response = await get(
      'appointments/',
      queryParameters: {
        'page': page,
        'ordering': 'date_time',
        if (search != null && search.isNotEmpty) 'search': search,
      },
    );
    return parsePage(response.data, AppointmentModel.fromJson, page: page);
  }

  @override
  Future<AppointmentModel> getAppointmentById(int id) async {
    final response = await get('appointments/$id/');
    return AppointmentModel.fromJson(_asMap(response.data, 'appointments/$id/'));
  }

  @override
  Future<AppointmentModel> createAppointment(
    Map<String, dynamic> body,
  ) async {
    // NOTE: currently returns backend 500 for any body — reported.
    final response = await post('appointments/', data: body);
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/ [POST]'),
    );
  }

  @override
  Future<AppointmentModel> updateAppointment(
    int id,
    Map<String, dynamic> body,
  ) async {
    final response = await patch('appointments/$id/', data: body);
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/$id/ [PATCH]'),
    );
  }

  @override
  Future<void> deleteAppointment(int id) async {
    await delete('appointments/$id/');
  }

  @override
  Future<AppointmentModel> cancelAppointment(int id, {String? note}) async {
    // Action bodies are undocumented (swagger refs the full Appointment
    // definition); best effort — re-verify once appointments are creatable.
    final data = <String, dynamic>{};
    if (note != null) data['note'] = note;
    final response = await post('appointments/$id/cancel/', data: data);
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/$id/cancel/'),
    );
  }

  @override
  Future<AppointmentModel> completeAppointment(int id) async {
    final response = await post('appointments/$id/complete/', data: {});
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/$id/complete/'),
    );
  }

  @override
  Future<AppointmentModel> noShowAppointment(int id) async {
    final response = await post('appointments/$id/no_show/', data: {});
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/$id/no_show/'),
    );
  }

  @override
  Future<AppointmentModel> changeStatus(int id, String status) async {
    final response = await post(
      'appointments/$id/change_status/',
      data: {'status': status},
    );
    return AppointmentModel.fromJson(
      _asMap(response.data, 'appointments/$id/change_status/'),
    );
  }

  @override
  Future<AvailableSlotsModel> getAvailableSlots({
    required int doctorId,
    required String date,
  }) async {
    final response = await get(
      'doctors/$doctorId/available-slots/',
      queryParameters: {'date': date},
    );
    return AvailableSlotsModel.fromJson(
      _asMap(response.data, 'doctors/$doctorId/available-slots/'),
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
