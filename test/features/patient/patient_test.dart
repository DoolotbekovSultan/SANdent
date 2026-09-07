import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/core/network/paged_response.dart';
import 'package:san_dent/features/patient/data/datasources/i_remote_patient_data_source.dart';
import 'package:san_dent/features/patient/data/mappers/patient_mapper.dart';
import 'package:san_dent/features/patient/data/models/patient_model.dart';
import 'package:san_dent/features/patient/data/models/patient_statistics_model.dart';
import 'package:san_dent/features/patient/data/models/patient_stats_model.dart';
import 'package:san_dent/features/patient/data/repositories/patient_repository.dart';
import 'package:san_dent/features/patient/domain/entities/patient_entity.dart';
import 'package:san_dent/features/patient/domain/parameters/create_patient_params.dart';
import 'package:san_dent/features/patient/domain/parameters/update_patient_params.dart';
import 'package:san_dent/features/patient/domain/usecases/get_patient_by_id_usecase.dart';
import 'package:san_dent/features/patient/domain/usecases/get_patient_usecase.dart';
import 'package:san_dent/features/patient/domain/usecases/patient_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

const _fullJson = <String, dynamic>{
  'id': 1,
  'first_name': 'Тест',
  'last_name': 'Пациентов',
  'middle_name': '',
  'full_name': 'Пациентов Тест',
  'short_name': 'Пациентов Т.',
  'date_of_birth': '1990-01-15',
  'age': 36,
  'age_group': 'young_adult',
  'gender': 'male',
  'phone': '+996555000111',
  'email': '',
  'address': '',
  'inn': '',
  'snils': '',
  'policy_number': '',
  'allergies': '',
  'chronic_diseases': '',
  'notes': '',
  'total_appointments': 0,
  'completed_appointments': 0,
  'cancelled_appointments': 0,
  'last_appointment': null,
  'documents': [],
  'created_at': '2026-09-06T14:25:33+0300',
  'updated_at': '2026-09-06T14:25:33+0300',
};

class FakeRemote implements IRemotePatientDataSource {
  List<PatientModel> items = [PatientModel.fromJson(_fullJson)];
  bool failList = false;

  @override
  Future<PageChunk<PatientModel, int>> getPatients({
    required int page,
    String? search,
  }) async {
    if (failList) {
      throw const Failure.network(type: NetworkFailure.noInternet);
    }
    final filtered = search == null || search.isEmpty
        ? items
        : items
              .where(
                (p) => p.full_name.contains(search) || p.phone.contains(search),
              )
              .toList();
    return PageChunk(items: filtered, nextCursor: null, hasMore: false);
  }

  @override
  Future<PageChunk<PatientModel, int>> searchPatients(String query) =>
      getPatients(page: 1, search: query);

  @override
  Future<PatientModel> getPatientById(int id) async => items.firstWhere(
    (p) => p.id == id,
    orElse: () => throw const Failure.http(
      type: HttpFailure.notFound,
      statusCode: 404,
    ),
  );

  @override
  Future<Map<String, dynamic>> createPatient(Map<String, dynamic> body) async =>
      body; // live echo: no id

  @override
  Future<void> updatePatient(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deletePatient(int id) async {
    items = items.where((p) => p.id != id).toList();
  }

  @override
  Future<PatientStatsModel> getPatientStats(int id) async =>
      const PatientStatsModel(
        total_appointments: 0,
        completed: 0,
        cancelled: 0,
        no_show: 0,
        last_visit: null,
        first_visit: null,
        avg_gap_days: null,
      );

  @override
  Future<PatientStatisticsModel> getStatistics() async =>
      PatientStatisticsModel.fromJson(_statisticsJson);
}

/// Live `GET /patients/statistics/` (doctor, 200).
const _statisticsJson = <String, dynamic>{
  'total': 0,
  'by_gender': [],
  'by_age_group': {'child': 0, 'young_adult': 0, 'adult': 0, 'senior': 0},
  'new_this_month': 0,
  'new_this_week': 0,
  'new_today': 0,
  'active': 0,
  'inactive': 0,
};

void main() {
  late FakeRemote remote;
  late PatientRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = PatientRepository(remoteDatasource: remote);
  });

  group('parsePage (shared helper)', () {
    test('parses DRF paged object {count, next, previous, results}', () {
      final chunk = parsePage(
        {
          'count': 1,
          'next': null,
          'previous': null,
          'results': [_fullJson],
        },
        PatientModel.fromJson,
        page: 1,
      );

      expect(chunk.items.length, 1);
      expect(chunk.items.first.id, 1);
      expect(chunk.hasMore, isFalse);
      expect(chunk.nextCursor, isNull);
    });

    test('sets nextCursor/hasMore when next page exists', () {
      final chunk = parsePage(
        {
          'count': 3,
          'next': 'http://x/api/v1/patients/?page=2',
          'previous': null,
          'results': [_fullJson],
        },
        PatientModel.fromJson,
        page: 1,
      );

      expect(chunk.hasMore, isTrue);
      expect(chunk.nextCursor, 2);
    });

    test('parses search shape {query, count, results}', () {
      final chunk = parsePage(
        {'query': 'Тест', 'count': 1, 'results': [_fullJson]},
        PatientModel.fromJson,
        page: 1,
      );

      expect(chunk.items.length, 1);
      expect(chunk.hasMore, isFalse);
    });

    test('parses bare array as a single chunk', () {
      final chunk = parsePage(
        [_fullJson],
        PatientModel.fromJson,
        page: 1,
      );

      expect(chunk.items.length, 1);
      expect(chunk.hasMore, isFalse);
    });
  });

  group('PatientModel.fromJson (live shape)', () {
    test('parses the full live object incl. documents: []', () {
      final model = PatientModel.fromJson(_fullJson);

      expect(model.id, 1);
      expect(model.full_name, 'Пациентов Тест');
      expect(model.gender, 'male');
      expect(model.documents, isEmpty);
      expect(model.last_appointment, isNull);
    });
  });

  group('PatientMapper', () {
    test('maps snake_case model to camelCase entity', () {
      final entity = PatientModel.fromJson(_fullJson).toDomain();

      expect(
        entity,
        const PatientEntity(
          id: 1,
          firstName: 'Тест',
          lastName: 'Пациентов',
          middleName: '',
          fullName: 'Пациентов Тест',
          shortName: 'Пациентов Т.',
          dateOfBirth: '1990-01-15',
          age: 36,
          ageGroup: 'young_adult',
          gender: 'male',
          phone: '+996555000111',
          email: '',
          address: '',
          inn: '',
          snils: '',
          policyNumber: '',
          allergies: '',
          chronicDiseases: '',
          notes: '',
          totalAppointments: 0,
          completedAppointments: 0,
          cancelledAppointments: 0,
          lastAppointment: null,
          documents: [],
          createdAt: '2026-09-06T14:25:33+0300',
          updatedAt: '2026-09-06T14:25:33+0300',
        ),
      );
    });

    test('maps stats model to entity', () {
      final entity = const PatientStatsModel(
        total_appointments: 5,
        completed: 3,
        cancelled: 1,
        no_show: 1,
        last_visit: '2026-09-01T10:00:00+0300',
        first_visit: null,
        avg_gap_days: 30,
      ).toDomain();

      expect(entity.totalAppointments, 5);
      expect(entity.noShow, 1);
      expect(entity.avgGapDays, 30);
    });
  });

  group('PatientRepository', () {
    test('getPatients returns entity chunk', () async {
      final chunk = await repository.getPatients(page: 1);

      expect(chunk.items.length, 1);
      expect(chunk.items.first.fullName, 'Пациентов Тест');
    });

    test('createPatient resolves full object via phone search', () async {
      final entity = await repository.createPatient(
        const CreatePatientParams(
          firstName: 'Тест',
          lastName: 'Пациентов',
          dateOfBirth: '1990-01-15',
          gender: 'male',
          phone: '+996555000111',
        ),
      );

      expect(entity.id, 1);
      expect(entity.totalAppointments, 0);
    });

    test('deletePatient removes the item', () async {
      await repository.deletePatient(1);
      final chunk = await repository.getPatients(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetPatientsUseCase maps failure to Left', () async {
      remote.failList = true;
      final useCase = GetPatientsUseCase(_logger(), repository: repository);

      final result = await useCase(const PatientsPageParams());

      expect(result, isFailure());
    });

    test('GetPatientByIdUseCase returns entity', () async {
      final useCase = GetPatientByIdUseCase(_logger(), repository: repository);

      final result = await useCase(1);

      expect(result.dataOrThrow().fullName, 'Пациентов Тест');
    });

    test('GetPatientStatsUseCase returns stats', () async {
      final useCase = GetPatientStatsUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(1);

      expect(result.dataOrThrow().totalAppointments, 0);
    });

    test('GetPatientStatisticsUseCase returns global counters', () async {
      final useCase = GetPatientStatisticsUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(const NoParams());

      final stats = result.dataOrThrow();
      expect(stats.total, 0);
      expect(stats.byAgeGroup['senior'], 0);
      expect(stats.byGender, isEmpty);
    });

    test('DeletePatientUseCase returns Right(null)', () async {
      final useCase = DeletePatientUseCase(_logger(), repository: repository);

      final result = await useCase(1);

      expect(result, isSuccess(null));
    });

    test('UpdatePatientParams carries partial fields', () {
      const params = UpdatePatientParams(id: 7, phone: '+996555000999');
      expect(params.id, 7);
      expect(params.phone, '+996555000999');
      expect(params.firstName, isNull);
    });
  });

  group('CreatePatientParams validation', () {
    test('rejects bad gender/phone, accepts valid set', () {
      expect(
        CreatePatientParams.validateAll(
          firstName: 'Иван',
          lastName: 'Петров',
          dateOfBirth: '1990-01-15',
          gender: 'other',
          phone: '+996555000111',
        ),
        isNotNull,
      );
      expect(
        CreatePatientParams.validateAll(
          firstName: 'Иван',
          lastName: 'Петров',
          dateOfBirth: '1990-01-15',
          gender: 'male',
          phone: 'abc',
        ),
        isNotNull,
      );
      expect(
        CreatePatientParams.validateAll(
          firstName: 'Иван',
          lastName: 'Петров',
          dateOfBirth: '1990-01-15',
          gender: 'female',
          phone: '+996555000111',
        ),
        isNull,
      );
    });
  });
}
