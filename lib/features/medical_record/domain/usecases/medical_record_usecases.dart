import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/medical_record_detail_entity.dart';
import '../entities/medical_record_entity.dart';
import '../entities/patient_history_entity.dart';
import '../parameters/medical_record_params.dart';
import '../repositories/i_medical_record_repository.dart';

/// Paged records (`GET medical-records/`).
@injectable
class GetMedicalRecordsUseCase
    extends NexoUseCase<PageChunk<MedicalRecordEntity, int>, int> {
  // ignore: use_super_parameters
  GetMedicalRecordsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<PageChunk<MedicalRecordEntity, int>> execute(int params) =>
      _repository.getRecords(page: params);
}

/// Record detail (`GET medical-records/{id}/`).
@injectable
class GetMedicalRecordByIdUseCase
    extends NexoUseCase<MedicalRecordDetailEntity, int> {
  // ignore: use_super_parameters
  GetMedicalRecordByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<MedicalRecordDetailEntity> execute(int params) =>
      _repository.getRecordById(params);
}

/// Creates a record (`POST medical-records/`).
///
/// NOTE: end-to-end creation needs an appointment, and
/// `POST /appointments/` currently 500s (reported) — expect failure
/// until the backend is fixed.
@injectable
class CreateMedicalRecordUseCase
    extends NexoUseCase<MedicalRecordDetailEntity, CreateMedicalRecordParams> {
  // ignore: use_super_parameters
  CreateMedicalRecordUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<MedicalRecordDetailEntity> execute(
    CreateMedicalRecordParams params,
  ) => _repository.createRecord(params);
}

/// Partial update (`PATCH medical-records/{id}/`).
@injectable
class UpdateMedicalRecordUseCase
    extends NexoUseCase<MedicalRecordDetailEntity, UpdateMedicalRecordParams> {
  // ignore: use_super_parameters
  UpdateMedicalRecordUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<MedicalRecordDetailEntity> execute(
    UpdateMedicalRecordParams params,
  ) => _repository.updateRecord(params);
}

/// Deletes a record (`DELETE medical-records/{id}/`).
@injectable
class DeleteMedicalRecordUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteMedicalRecordUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteRecord(params);
}

/// Attaches a procedure (`POST medical-records/{id}/add_procedure/`).
@injectable
class AddRecordProcedureUseCase
    extends NexoUseCase<void, RecordAttachmentParams> {
  // ignore: use_super_parameters
  AddRecordProcedureUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<void> execute(RecordAttachmentParams params) =>
      _repository.addProcedure(
        recordId: params.recordId,
        procedureId: params.itemId,
        note: params.note,
      );
}

/// Attaches a material (`POST medical-records/{id}/add_material/`).
@injectable
class AddRecordMaterialUseCase
    extends NexoUseCase<void, RecordAttachmentParams> {
  // ignore: use_super_parameters
  AddRecordMaterialUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<void> execute(RecordAttachmentParams params) =>
      _repository.addMaterial(
        recordId: params.recordId,
        materialId: params.itemId,
        quantity: params.quantity ?? 1,
      );
}

/// Detaches a procedure (`DELETE .../remove_procedure/`).
@injectable
class RemoveRecordProcedureUseCase
    extends NexoUseCase<void, RecordDetachmentParams> {
  // ignore: use_super_parameters
  RemoveRecordProcedureUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<void> execute(RecordDetachmentParams params) =>
      _repository.removeProcedure(
        recordId: params.recordId,
        procedureId: params.itemId,
      );
}

/// Detaches a material (`DELETE .../remove_material/`).
@injectable
class RemoveRecordMaterialUseCase
    extends NexoUseCase<void, RecordDetachmentParams> {
  // ignore: use_super_parameters
  RemoveRecordMaterialUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<void> execute(RecordDetachmentParams params) =>
      _repository.removeMaterial(
        recordId: params.recordId,
        materialId: params.itemId,
      );
}

/// Patient visit history (`GET patients/{id}/history/`).
@injectable
class GetPatientHistoryUseCase
    extends NexoUseCase<PatientHistoryEntity, int> {
  // ignore: use_super_parameters
  GetPatientHistoryUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMedicalRecordRepository _repository;

  @override
  Future<PatientHistoryEntity> execute(int params) =>
      _repository.getPatientHistory(params);
}

class RecordAttachmentParams {
  const RecordAttachmentParams({
    required this.recordId,
    required this.itemId,
    this.quantity,
    this.note,
  });

  final int recordId;
  final int itemId;
  final int? quantity;
  final String? note;
}

class RecordDetachmentParams {
  const RecordDetachmentParams({required this.recordId, required this.itemId});

  final int recordId;
  final int itemId;
}
