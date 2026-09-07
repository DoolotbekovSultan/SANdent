import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_entity.dart';
import '../repositories/i_patient_repository.dart';

/// Patient detail (`GET patients/{id}/`).
@injectable
class GetPatientByIdUseCase extends NexoUseCase<PatientEntity, int> {
  // ignore: use_super_parameters
  GetPatientByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PatientEntity> execute(int params) =>
      _repository.getPatientById(params);
}
