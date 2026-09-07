import 'package:nexo/nexo_core.dart';

import '../entities/clinic_entity.dart';
import '../parameters/create_clinic_params.dart';
import '../parameters/update_clinic_params.dart';

/// Clinic repository contract.
abstract interface class IClinicRepository {
  Future<PageChunk<ClinicEntity, int>> getClinics({required int page});
  Future<ClinicEntity> getClinicById(int id);
  Future<ClinicEntity> createClinic(CreateClinicParams params);
  Future<ClinicEntity> updateClinic(UpdateClinicParams params);
  Future<void> deleteClinic(int id);
}
