import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/patient_entity.dart';
import '../../domain/entities/patient_statistics_entity.dart';
import '../../domain/entities/patient_stats_entity.dart';
import '../../domain/parameters/create_patient_params.dart';
import '../../domain/parameters/update_patient_params.dart';
import '../../domain/repositories/i_patient_repository.dart';
import '../datasources/i_remote_patient_data_source.dart';
import '../mappers/patient_mapper.dart';
import '../models/requests/patient_requests.dart';

@LazySingleton(as: IPatientRepository)
class PatientRepository implements IPatientRepository {
  PatientRepository({required this._remoteDatasource});

  final IRemotePatientDataSource _remoteDatasource;

  @override
  Future<PageChunk<PatientEntity, int>> getPatients({
    required int page,
    String? search,
  }) async {
    final chunk = await _remoteDatasource.getPatients(
      page: page,
      search: search,
    );
    return PageChunk<PatientEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<PageChunk<PatientEntity, int>> searchPatients(String query) async {
    final chunk = await _remoteDatasource.searchPatients(query);
    return PageChunk<PatientEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<PatientEntity> getPatientById(int id) async {
    final model = await _remoteDatasource.getPatientById(id);
    return model.toDomain();
  }

  @override
  Future<PatientEntity> createPatient(CreatePatientParams params) async {
    await _remoteDatasource.createPatient(
      CreatePatientRequest(
        firstName: params.firstName.trim(),
        lastName: params.lastName.trim(),
        middleName: params.middleName?.trim(),
        dateOfBirth: params.dateOfBirth,
        gender: params.gender,
        phone: params.phone.trim(),
        email: params.email,
        address: params.address,
        inn: params.inn,
        snils: params.snils,
        policyNumber: params.policyNumber,
        allergies: params.allergies,
        chronicDiseases: params.chronicDiseases,
        notes: params.notes,
      ).toJson(),
    );
    // The create echo carries no id (verified live) — resolve the full
    // object via search by the unique phone.
    final found = await searchPatients(params.phone.trim());
    final match = found.items.where((e) => e.phone == params.phone.trim());
    if (match.isEmpty) {
      throw const Failure.parse(
        type: ParseFailure.schemaMismatch,
        field: 'phone',
        message: 'Создан, но не найден поиском — обновите список',
      );
    }
    return match.first;
  }

  @override
  Future<PatientEntity> updatePatient(UpdatePatientParams params) async {
    await _remoteDatasource.updatePatient(
      params.id,
      UpdatePatientRequest(
        firstName: params.firstName,
        lastName: params.lastName,
        middleName: params.middleName,
        dateOfBirth: params.dateOfBirth,
        gender: params.gender,
        phone: params.phone,
        email: params.email,
        address: params.address,
        inn: params.inn,
        snils: params.snils,
        policyNumber: params.policyNumber,
        allergies: params.allergies,
        chronicDiseases: params.chronicDiseases,
        notes: params.notes,
      ).toJson(),
    );
    // The PATCH echo carries no counters (verified live) — re-fetch.
    return getPatientById(params.id);
  }

  @override
  Future<void> deletePatient(int id) =>
      _remoteDatasource.deletePatient(id);

  @override
  Future<PatientStatsEntity> getPatientStats(int id) async {
    final model = await _remoteDatasource.getPatientStats(id);
    return model.toDomain();
  }

  @override
  Future<PatientStatisticsEntity> getStatistics() async {
    final model = await _remoteDatasource.getStatistics();
    return model.toDomain();
  }
}
