import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/patient_document_model.dart';
import 'i_remote_patient_document_data_source.dart';

/// Offline/mock patient documents backend.
@LazySingleton(as: IRemotePatientDocumentDataSource, env: [AppEnvironment.mock])
class MockPatientDocumentRemoteDataSource
    implements IRemotePatientDocumentDataSource {
  static const _items = [
    PatientDocumentModel(
      id: 1,
      patient: 1,
      document_type: 'xray',
      document_type_display: 'Рентген',
      file: null,
      file_url: null,
      description: 'Снимок',
      uploaded_at: '2026-09-07T10:00:00+0300',
    ),
  ];

  List<PatientDocumentModel> _filtered(int? patientId) => patientId == null
      ? _items
      : _items.where((d) => d.patient == patientId).toList();

  @override
  Future<PageChunk<PatientDocumentModel, int>> getDocuments({
    required int page,
    int? patientId,
  }) async => PageChunk(
    items: _filtered(patientId),
    nextCursor: null,
    hasMore: false,
  );

  @override
  Future<PatientDocumentModel> getDocumentById(int id) async =>
      _items.firstWhere(
        (d) => d.id == id,
        orElse: () => throw StateError('No mock document $id'),
      );

  @override
  Future<void> deleteDocument(int id) async {}

  @override
  Future<PatientDocumentModel> uploadDocument({
    required int patientId,
    required String documentType,
    required String filePath,
    String? description,
  }) async => PatientDocumentModel(
    id: 2,
    patient: patientId,
    document_type: documentType,
    document_type_display: null,
    file: null,
    file_url: null,
    description: description,
    uploaded_at: null,
  );
}
