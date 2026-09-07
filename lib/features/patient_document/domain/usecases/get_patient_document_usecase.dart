import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_document_entity.dart';
import '../repositories/i_patient_document_repository.dart';

/// Page/filter parameters for the documents list.
class PatientDocumentsPageParams {
  const PatientDocumentsPageParams({this.page = 1, this.patientId});

  final int page;
  final int? patientId;
}

/// Paged documents list (`GET patient-documents/`, optional `?patient=`).
@injectable
class GetPatientDocumentUseCase
    extends
        NexoUseCase<
          PageChunk<PatientDocumentEntity, int>,
          PatientDocumentsPageParams
        > {
  // ignore: use_super_parameters
  GetPatientDocumentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientDocumentRepository _repository;

  @override
  Future<PageChunk<PatientDocumentEntity, int>> execute(
    PatientDocumentsPageParams params,
  ) => _repository.getDocuments(
    page: params.page,
    patientId: params.patientId,
  );
}
