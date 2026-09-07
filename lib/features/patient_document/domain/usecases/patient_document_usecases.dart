import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_document_entity.dart';
import '../repositories/i_patient_document_repository.dart';

/// Deletes a document (`DELETE patient-documents/{id}/` → 204 per swagger,
/// UNVERIFIED — the list is empty on the server).
@injectable
class DeletePatientDocumentUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeletePatientDocumentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientDocumentRepository _repository;

  @override
  Future<void> execute(int id) => _repository.deleteDocument(id);
}

/// Uploads a document (multipart `POST patient-documents/`).
/// BLOCKED live (verified 2026-09-07): the backend parses only
/// `application/json` → 415 on any multipart body. Implemented for the day
/// the backend enables multipart parsing; no UI entry point until then.
@injectable
class UploadPatientDocumentUseCase
    extends NexoUseCase<PatientDocumentEntity, UploadDocumentParams> {
  // ignore: use_super_parameters
  UploadPatientDocumentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientDocumentRepository _repository;

  @override
  Future<PatientDocumentEntity> execute(UploadDocumentParams params) =>
      _repository.uploadDocument(params);
}
