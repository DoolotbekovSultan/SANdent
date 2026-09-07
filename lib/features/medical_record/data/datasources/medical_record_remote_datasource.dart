import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/medical_record_detail_model.dart';
import '../models/medical_record_model.dart';
import '../models/patient_history_model.dart';
import 'i_remote_medical_record_data_source.dart';

/// Real medical-records API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteMedicalRecordDataSource, env: [AppEnvironment.prod])
class MedicalRecordRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteMedicalRecordDataSource {
  MedicalRecordRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<MedicalRecordModel, int>> getRecords({
    required int page,
  }) async {
    final response = await get(
      'medical-records/',
      queryParameters: {'page': page},
    );
    return parsePage(response.data, MedicalRecordModel.fromJson, page: page);
  }

  @override
  Future<MedicalRecordDetailModel> getRecordById(int id) async {
    final response = await get('medical-records/$id/');
    return MedicalRecordDetailModel.fromJson(
      _asMap(response.data, 'medical-records/$id/'),
    );
  }

  @override
  Future<MedicalRecordDetailModel> createRecord(
    Map<String, dynamic> body,
  ) async {
    final response = await post('medical-records/', data: body);
    return MedicalRecordDetailModel.fromJson(
      _asMap(response.data, 'medical-records/ [POST]'),
    );
  }

  @override
  Future<MedicalRecordDetailModel> updateRecord(
    int id,
    Map<String, dynamic> body,
  ) async {
    final response = await patch('medical-records/$id/', data: body);
    return MedicalRecordDetailModel.fromJson(
      _asMap(response.data, 'medical-records/$id/ [PATCH]'),
    );
  }

  @override
  Future<void> deleteRecord(int id) async {
    await delete('medical-records/$id/');
  }

  @override
  Future<void> addProcedure(int id, Map<String, dynamic> body) async {
    await post('medical-records/$id/add_procedure/', data: body);
  }

  @override
  Future<void> addMaterial(int id, Map<String, dynamic> body) async {
    await post('medical-records/$id/add_material/', data: body);
  }

  @override
  Future<void> removeProcedure(int recordId, int procedureId) async {
    await delete(
      'medical-records/$recordId/remove_procedure/',
      queryParameters: {'procedure_id': procedureId},
    );
  }

  @override
  Future<void> removeMaterial(int recordId, int materialId) async {
    await delete(
      'medical-records/$recordId/remove_material/',
      queryParameters: {'material_id': materialId},
    );
  }

  @override
  Future<PatientHistoryModel> getPatientHistory(int patientId) async {
    final response = await get('patients/$patientId/history/');
    return PatientHistoryModel.fromJson(
      _asMap(response.data, 'patients/$patientId/history/'),
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
