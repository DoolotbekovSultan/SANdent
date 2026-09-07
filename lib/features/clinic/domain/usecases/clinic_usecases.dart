import 'package:nexo/nexo_core.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/clinic_entity.dart';
import '../parameters/create_clinic_params.dart';
import '../repositories/i_clinic_repository.dart';

/// Paged clinics (`GET clinics/`).
@injectable
class GetClinicsUseCase
    extends NexoUseCase<PageChunk<ClinicEntity, int>, int> {
  // ignore: use_super_parameters
  GetClinicsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IClinicRepository _repository;

  @override
  Future<PageChunk<ClinicEntity, int>> execute(int params) =>
      _repository.getClinics(page: params);
}

/// Creates a clinic — returns the full object (201, not echo).
@injectable
class CreateClinicUseCase
    extends NexoUseCase<ClinicEntity, CreateClinicParams> {
  // ignore: use_super_parameters
  CreateClinicUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IClinicRepository _repository;

  @override
  Future<ClinicEntity> execute(CreateClinicParams params) =>
      _repository.createClinic(params);
}

/// Deletes a clinic (`DELETE clinics/{id}/` → 204).
@injectable
class DeleteClinicUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteClinicUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IClinicRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteClinic(params);
}
