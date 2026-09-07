import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/medical_record/data/datasources/i_remote_medical_record_data_source.dart';
import 'package:san_dent/features/medical_record/data/mappers/medical_record_mapper.dart';
import 'package:san_dent/features/medical_record/data/models/medical_record_detail_model.dart';
import 'package:san_dent/features/medical_record/data/models/medical_record_model.dart';
import 'package:san_dent/features/medical_record/data/models/patient_history_model.dart';
import 'package:san_dent/features/medical_record/data/repositories/medical_record_repository.dart';
import 'package:san_dent/features/medical_record/domain/parameters/medical_record_params.dart';
import 'package:san_dent/features/medical_record/domain/usecases/medical_record_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Swagger-shaped objects (no live objects — nothing created on server).
const _recordJson = <String, dynamic>{
  'id': 1,
  'appointment': 7,
  'patient_name': 'Петров Иван',
  'doctor_name': 'Rustam Keneev',
  'appointment_date': '2026-09-07T10:00:00+0300',
  'diagnosis': 'Кариес',
  'procedure_count': 1,
  'material_count': 2,
  'created_at': '2026-09-07T11:00:00+0300',
};

/// Live-verified empty history (`GET /patients/1/history/`).
final _historyJson = <String, dynamic>{
  'patient': {
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
  },
  'appointments': [],
  'total': 0,
};

class FakeRemote implements IRemoteMedicalRecordDataSource {
  final List<MedicalRecordModel> items = [
    MedicalRecordModel.fromJson(_recordJson),
  ];

  @override
  Future<PageChunk<MedicalRecordModel, int>> getRecords({
    required int page,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<MedicalRecordDetailModel> getRecordById(int id) async =>
      const MedicalRecordDetailModel(
        id: 1,
        appointment: 7,
        appointment_detail: null,
        diagnosis: 'Кариес',
        recommendations: 'Осмотр через полгода',
        comments: null,
        procedures: null,
        materials: null,
        patient_id: 1,
        patient_name: 'Петров Иван',
        doctor_id: 3,
        doctor_name: 'Rustam Keneev',
        appointment_date: '2026-09-07T10:00:00+0300',
        has_procedures: true,
        has_materials: true,
        created_at: null,
        updated_at: null,
      );

  @override
  Future<MedicalRecordDetailModel> createRecord(
    Map<String, dynamic> body,
  ) async => getRecordById(1);

  @override
  Future<MedicalRecordDetailModel> updateRecord(
    int id,
    Map<String, dynamic> body,
  ) async => getRecordById(id);

  @override
  Future<void> deleteRecord(int id) async {
    items.removeWhere((r) => r.id == id);
  }

  @override
  Future<void> addProcedure(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> addMaterial(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> removeProcedure(int recordId, int procedureId) async {}

  @override
  Future<void> removeMaterial(int recordId, int materialId) async {}

  @override
  Future<PatientHistoryModel> getPatientHistory(int patientId) async =>
      PatientHistoryModel.fromJson(_historyJson);
}

void main() {
  late FakeRemote remote;
  late MedicalRecordRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = MedicalRecordRepository(remoteDatasource: remote);
  });

  group('MedicalRecordMapper (swagger shape)', () {
    test('maps list item with counts', () {
      final entity = MedicalRecordModel.fromJson(_recordJson).toDomain();

      expect(entity.diagnosis, 'Кариес');
      expect(entity.procedureCount, 1);
      expect(entity.materialCount, 2);
      expect(entity.patientName, 'Петров Иван');
    });

    test('maps empty live history', () {
      final history = PatientHistoryModel.fromJson(_historyJson).toDomain();

      expect(history.patient.fullName, 'Пациентов Тест');
      expect(history.appointments, isEmpty);
      expect(history.total, 0);
    });
  });

  group('MedicalRecordRepository', () {
    test('getRecords returns chunk', () async {
      final chunk = await repository.getRecords(page: 1);
      expect(chunk.items.length, 1);
    });

    test('getPatientHistory returns history', () async {
      final history = await repository.getPatientHistory(1);
      expect(history.total, 0);
    });

    test('deleteRecord removes the item', () async {
      await repository.deleteRecord(1);
      final chunk = await repository.getRecords(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetPatientHistoryUseCase returns history', () async {
      final result = await GetPatientHistoryUseCase(
        _logger(),
        repository: repository,
      )(1);

      expect(result.dataOrThrow().appointments, isEmpty);
    });

    test('CreateMedicalRecordUseCase returns detail', () async {
      final result = await CreateMedicalRecordUseCase(
        _logger(),
        repository: repository,
      )(
        const CreateMedicalRecordParams(
          appointmentId: 7,
          diagnosis: 'Кариес',
        ),
      );

      expect(result.dataOrThrow().diagnosis, 'Кариес');
    });

    test('CreateMedicalRecordParams validates diagnosis', () {
      expect(
        CreateMedicalRecordParams.validateDiagnosis('  '),
        isNotNull,
      );
      expect(
        CreateMedicalRecordParams.validateDiagnosis('Пульпит'),
        isNull,
      );
    });
  });
}
