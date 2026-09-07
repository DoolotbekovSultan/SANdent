import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/patient_model.dart';
import '../models/patient_statistics_model.dart';
import '../models/patient_stats_model.dart';
import 'i_remote_patient_data_source.dart';

/// Real patient API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemotePatientDataSource, env: [AppEnvironment.prod])
class PatientRemoteDataSource extends BaseRemoteDataSource
    implements IRemotePatientDataSource {
  PatientRemoteDataSource({required DioClient client, required NexoLogger logger})
    : super(client, logger: logger);

  @override
  Future<PageChunk<PatientModel, int>> getPatients({
    required int page,
    String? search,
  }) async {
    final response = await get(
      'patients/',
      queryParameters: {
        'page': page,
        if (search != null && search.isNotEmpty) 'search': search,
      },
    );
    return parsePage(response.data, PatientModel.fromJson, page: page);
  }

  @override
  Future<PageChunk<PatientModel, int>> searchPatients(String query) async {
    final response = await get(
      'patients/search/',
      queryParameters: {'query': query},
    );
    return parsePage(response.data, PatientModel.fromJson, page: 1);
  }

  @override
  Future<PatientModel> getPatientById(int id) async {
    final response = await get('patients/$id/');
    return PatientModel.fromJson(_asMap(response.data, 'patients/$id/'));
  }

  @override
  Future<Map<String, dynamic>> createPatient(Map<String, dynamic> body) async {
    final response = await post('patients/', data: body);
    // Verified live: 201 with an echo of the sent fields (no id).
    return _asMap(response.data, 'patients/ [POST]');
  }

  @override
  Future<void> updatePatient(int id, Map<String, dynamic> body) async {
    // Verified live: 200 with an echo of the sent fields (no id).
    await patch('patients/$id/', data: body);
  }

  @override
  Future<void> deletePatient(int id) async {
    // Verified live: 204, empty body.
    await delete('patients/$id/');
  }

  @override
  Future<PatientStatsModel> getPatientStats(int id) async {
    final response = await get('patients/$id/stats/');
    return PatientStatsModel.fromJson(
      _asMap(response.data, 'patients/$id/stats/'),
    );
  }

  @override
  Future<PatientStatisticsModel> getStatistics() async {
    final response = await get('patients/statistics/');
    return PatientStatisticsModel.fromJson(
      _asMap(response.data, 'patients/statistics/'),
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
