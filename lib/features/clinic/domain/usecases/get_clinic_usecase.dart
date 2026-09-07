import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/clinic_entity.dart';
import '../repositories/i_clinic_repository.dart';

/// Clinic detail (`GET clinics/{id}/`).
@injectable
class GetClinicByIdUseCase extends NexoUseCase<ClinicEntity, int> {
  // ignore: use_super_parameters
  GetClinicByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IClinicRepository _repository;

  @override
  Future<ClinicEntity> execute(int params) => _repository.getClinicById(params);
}
