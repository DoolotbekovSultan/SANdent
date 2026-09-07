import 'package:nexo/nexo_core.dart';

import '../entities/patient_document_entity.dart';

abstract interface class IPatientDocumentRepository {
  Future<PageChunk<PatientDocumentEntity, int>> getDocuments({
    required int page,
    int? patientId,
  });
  Future<PatientDocumentEntity> getDocumentById(int id);
  Future<void> deleteDocument(int id);
  Future<PatientDocumentEntity> uploadDocument(UploadDocumentParams params);
}

/// Upload parameters (file picked on-device; `image_picker` lands with the
/// upload UI once the backend accepts multipart — currently 415, BLOCKED).
class UploadDocumentParams {
  const UploadDocumentParams({
    required this.patientId,
    required this.documentType,
    required this.filePath,
    this.description,
  });

  final int patientId;
  final String documentType;
  final String filePath;
  final String? description;
}
