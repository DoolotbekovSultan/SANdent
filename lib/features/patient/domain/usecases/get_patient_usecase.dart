import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_entity.dart';
import '../repositories/i_patient_repository.dart';

/// Page/filter parameters for the patients list.
class PatientsPageParams {
  const PatientsPageParams({this.page = 1, this.search});

  final int page;
  final String? search;
}

/// Paged patients list (`GET patients/`).
@injectable
class GetPatientsUseCase
    extends NexoUseCase<PageChunk<PatientEntity, int>, PatientsPageParams> {
  // ignore: use_super_parameters
  GetPatientsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PageChunk<PatientEntity, int>> execute(PatientsPageParams params) =>
      _repository.getPatients(page: params.page, search: params.search);
}

/// Full-text search (`GET patients/search/?query=`).
@injectable
class SearchPatientsUseCase extends NexoUseCase<PageChunk<PatientEntity, int>, String> {
  // ignore: use_super_parameters
  SearchPatientsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PageChunk<PatientEntity, int>> execute(String params) =>
      _repository.searchPatients(params);
}
