import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_document_entity.dart';
import '../repositories/i_patient_document_repository.dart';

/// Single document (`GET patient-documents/{id}/`, UNVERIFIED — the list is
/// empty on the server).
@injectable
class GetPatientDocumentByIdUseCase
    extends NexoUseCase<PatientDocumentEntity, int> {
  // ignore: use_super_parameters
  GetPatientDocumentByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientDocumentRepository _repository;

  @override
  Future<PatientDocumentEntity> execute(int id) {
    return _repository.getDocumentById(id);
  }
}
