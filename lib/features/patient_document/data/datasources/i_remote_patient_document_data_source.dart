import 'package:nexo/nexo_core.dart';

import '../models/patient_document_model.dart';

/// Patient documents API (base `.../api/v1/`).
///
/// Live-verified (admin/doctor/director 200 on reads — verified 2026-09-07):
/// - `GET patient-documents/` PAGED `{count, next, previous, results}`
///   (empty on server; `?patient=<id>` filter validated against existing
///   patients, `?search=` accepted).
/// - `GET patient-documents/{id}/` → [PatientDocumentModel] (UNVERIFIED —
///   nothing to fetch); `DELETE` → 204 per swagger (UNVERIFIED).
/// - `POST` is BLOCKED: the view parses only `application/json` (live
///   OPTIONS) while `file` is a required upload field → any multipart body
///   gets 415. [uploadDocument] implements the correct contract via
///   `postFormData` for the day the backend enables multipart parsing.
abstract interface class IRemotePatientDocumentDataSource {
  Future<PageChunk<PatientDocumentModel, int>> getDocuments({
    required int page,
    int? patientId,
  });
  Future<PatientDocumentModel> getDocumentById(int id);
  Future<void> deleteDocument(int id);
  Future<PatientDocumentModel> uploadDocument({
    required int patientId,
    required String documentType,
    required String filePath,
    String? description,
  });
}
