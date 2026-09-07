import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/medical_record_detail_entity.dart';
import '../../domain/entities/medical_record_entity.dart';
import '../../domain/entities/patient_history_entity.dart';
import '../../domain/parameters/medical_record_params.dart';
import '../../domain/repositories/i_medical_record_repository.dart';
import '../datasources/i_remote_medical_record_data_source.dart';
import '../mappers/medical_record_mapper.dart';
import '../models/requests/medical_record_requests.dart';

@LazySingleton(as: IMedicalRecordRepository)
class MedicalRecordRepository implements IMedicalRecordRepository {
  MedicalRecordRepository({required this._remoteDatasource});

  final IRemoteMedicalRecordDataSource _remoteDatasource;

  @override
  Future<PageChunk<MedicalRecordEntity, int>> getRecords({
    required int page,
  }) async {
    final chunk = await _remoteDatasource.getRecords(page: page);
    return PageChunk<MedicalRecordEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<MedicalRecordDetailEntity> getRecordById(int id) async {
    final model = await _remoteDatasource.getRecordById(id);
    return model.toDomain();
  }

  @override
  Future<MedicalRecordDetailEntity> createRecord(
    CreateMedicalRecordParams params,
  ) async {
    final model = await _remoteDatasource.createRecord(
      CreateMedicalRecordRequest(
        appointmentId: params.appointmentId,
        diagnosis: params.diagnosis.trim(),
        recommendations: params.recommendations,
        comments: params.comments,
        procedures: params.procedures.map((e) => e.toJson()).toList(),
        materials: params.materials.map((e) => e.toJson()).toList(),
      ).toJson(),
    );
    return model.toDomain();
  }

  @override
  Future<MedicalRecordDetailEntity> updateRecord(
    UpdateMedicalRecordParams params,
  ) async {
    final model = await _remoteDatasource.updateRecord(
      params.id,
      UpdateMedicalRecordRequest(
        diagnosis: params.diagnosis,
        recommendations: params.recommendations,
        comments: params.comments,
      ).toJson(),
    );
    return model.toDomain();
  }

  @override
  Future<void> deleteRecord(int id) =>
      _remoteDatasource.deleteRecord(id);

  @override
  Future<void> addProcedure({
    required int recordId,
    required int procedureId,
    String? note,
  }) {
    final body = <String, dynamic>{'procedure': procedureId};
    if (note != null) body['note'] = note;
    return _remoteDatasource.addProcedure(recordId, body);
  }

  @override
  Future<void> addMaterial({
    required int recordId,
    required int materialId,
    required int quantity,
  }) => _remoteDatasource.addMaterial(recordId, {
    'material': materialId,
    'quantity': quantity,
  });

  @override
  Future<void> removeProcedure({
    required int recordId,
    required int procedureId,
  }) => _remoteDatasource.removeProcedure(recordId, procedureId);

  @override
  Future<void> removeMaterial({
    required int recordId,
    required int materialId,
  }) => _remoteDatasource.removeMaterial(recordId, materialId);

  @override
  Future<PatientHistoryEntity> getPatientHistory(int patientId) async {
    final model = await _remoteDatasource.getPatientHistory(patientId);
    return model.toDomain();
  }
}
