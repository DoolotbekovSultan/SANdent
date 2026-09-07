import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/clinic_model.dart';
import 'i_remote_clinic_data_source.dart';

/// Real clinic API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteClinicDataSource, env: [AppEnvironment.prod])
class ClinicRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteClinicDataSource {
  ClinicRemoteDataSource({required DioClient client, required NexoLogger logger})
    : super(client, logger: logger);

  @override
  Future<PageChunk<ClinicModel, int>> getClinics({required int page}) async {
    final response = await get('clinics/', queryParameters: {'page': page});
    return parsePage(response.data, ClinicModel.fromJson, page: page);
  }

  @override
  Future<ClinicModel> getClinicById(int id) async {
    final response = await get('clinics/$id/');
    return ClinicModel.fromJson(_asMap(response.data, 'clinics/$id/'));
  }

  @override
  Future<ClinicModel> createClinic(Map<String, dynamic> body) async {
    // Verified live: 201 full object (not echo).
    final response = await post('clinics/', data: body);
    return ClinicModel.fromJson(_asMap(response.data, 'clinics/ [POST]'));
  }

  @override
  Future<ClinicModel> updateClinic(int id, Map<String, dynamic> body) async {
    final response = await patch('clinics/$id/', data: body);
    return ClinicModel.fromJson(_asMap(response.data, 'clinics/$id/ [PATCH]'));
  }

  @override
  Future<void> deleteClinic(int id) async => delete('clinics/$id/');

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected JSON object from $endpoint');
  }
}
