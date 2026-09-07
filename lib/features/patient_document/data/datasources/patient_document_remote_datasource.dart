import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/patient_document_model.dart';
import 'i_remote_patient_document_data_source.dart';

/// Real patient documents API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemotePatientDocumentDataSource, env: [AppEnvironment.prod])
class PatientDocumentRemoteDataSource extends BaseRemoteDataSource
    implements IRemotePatientDocumentDataSource {
  PatientDocumentRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<PatientDocumentModel, int>> getDocuments({
    required int page,
    int? patientId,
  }) async {
    final query = <String, dynamic>{'page': page};
    if (patientId != null) query['patient'] = patientId;
    final response = await get('patient-documents/', queryParameters: query);
    return parsePage(response.data, PatientDocumentModel.fromJson, page: page);
  }

  @override
  Future<PatientDocumentModel> getDocumentById(int id) async {
    final response = await get('patient-documents/$id/');
    return PatientDocumentModel.fromJson(
      _asMap(response.data, 'patient-documents/$id/'),
    );
  }

  @override
  Future<void> deleteDocument(int id) async {
    // Per swagger: 204 (UNVERIFIED — the list is empty on the server).
    await delete('patient-documents/$id/');
  }

  @override
  Future<PatientDocumentModel> uploadDocument({
    required int patientId,
    required String documentType,
    required String filePath,
    String? description,
  }) async {
    // BLOCKED live (verified 2026-09-07): the view parses only
    // `application/json`, so this multipart call gets 415 until the backend
    // enables multipart parsing. Contract implemented for that day.
    final data = FormData.fromMap({
      'patient': patientId,
      'document_type': documentType,
      if (description != null && description.isNotEmpty)
        'description': description,
      'file': await MultipartFile.fromFile(filePath),
    });
    final response = await postFormData('patient-documents/', data: data);
    return PatientDocumentModel.fromJson(
      _asMap(response.data, 'patient-documents/ [POST]'),
    );
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
