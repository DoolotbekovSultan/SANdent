import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/appointment/data/datasources/i_remote_appointment_data_source.dart';
import 'package:san_dent/features/appointment/data/mappers/appointment_mapper.dart';
import 'package:san_dent/features/appointment/data/models/appointment_model.dart';
import 'package:san_dent/features/appointment/data/models/available_slots_model.dart';
import 'package:san_dent/features/appointment/data/repositories/appointment_repository.dart';
import 'package:san_dent/features/appointment/domain/entities/appointment_status.dart';
import 'package:san_dent/features/appointment/domain/parameters/appointment_params.dart';
import 'package:san_dent/features/appointment/domain/usecases/appointment_usecases.dart';
import 'package:san_dent/features/appointment/domain/usecases/get_appointment_usecase.dart';
import 'package:san_dent/features/appointment/presentation/cubit/appointment_cubit.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Swagger-shaped object (NOT live-verified — no appointment obtainable).
const _apptJson = <String, dynamic>{
  'id': 7,
  'patient': 1,
  'patient_detail': {
    'id': 1,
    'first_name': 'Иван',
    'last_name': 'Петров',
    'middle_name': null,
    'full_name': 'Петров Иван',
    'short_name': null,
    'date_of_birth': '1990-01-15',
    'age': 36,
    'age_group': null,
    'gender': 'male',
    'phone': '+996555000111',
    'email': null,
    'address': null,
    'inn': null,
    'snils': null,
    'policy_number': null,
    'allergies': null,
    'chronic_diseases': null,
    'notes': null,
    'total_appointments': 0,
    'completed_appointments': 0,
    'cancelled_appointments': 0,
    'last_appointment': null,
    'documents': null,
    'created_at': null,
    'updated_at': null,
  },
  'doctor': 3,
  'doctor_detail': {'id': 3, 'full_name': 'Rustam Keneev'},
  'clinic': null,
  'clinic_detail': null,
  'date_time': '2026-09-07T10:00:00+0300',
  'duration': 30,
  'end_time': '2026-09-07T10:30:00+0300',
  'status': 'scheduled',
  'status_display': 'Запланирован',
  'notes': 'первичный приём',
  'created_by': 4,
  'created_at': '2026-09-06T15:00:00+0300',
  'updated_at': '2026-09-06T15:00:00+0300',
  'sync_status': 'synced',
  'device_id': null,
  'status_history': [
    {
      'id': 1,
      'status': 'scheduled',
      'status_display': 'Запланирован',
      'old_status': null,
      'changed_by': 4,
      'changed_by_name': 'test_admin',
      'note': '',
      'changed_at': '2026-09-06T15:00:00+0300',
    },
  ],
};

/// Live-verified `GET /doctors/3/available-slots/?date=2026-09-07` (truncated).
const _slotsJson = <String, dynamic>{
  'doctor': {'id': 3, 'name': 'Rustam Keneev'},
  'date': '2026-09-07',
  'available_slots': [
    {
      'start': '2026-09-07T09:00:00',
      'end': '2026-09-07T09:30:00',
      'duration': 30,
      'available': true,
    },
  ],
};

class FakeRemote implements IRemoteAppointmentDataSource {
  List<AppointmentModel> items = [AppointmentModel.fromJson(_apptJson)];

  @override
  Future<PageChunk<AppointmentModel, int>> getAppointments({
    required int page,
    String? search,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<AppointmentModel> getAppointmentById(int id) async => items.first;

  @override
  Future<AppointmentModel> createAppointment(
    Map<String, dynamic> body,
  ) async => items.first;

  @override
  Future<AppointmentModel> updateAppointment(
    int id,
    Map<String, dynamic> body,
  ) async => items.first;

  @override
  Future<void> deleteAppointment(int id) async {
    items = items.where((a) => a.id != id).toList();
  }

  AppointmentModel _withStatus(int id, String status) {
    final current = items.firstWhere((a) => a.id == id);
    return AppointmentModel.fromJson({..._apptJson, 'id': current.id, 'status': status});
  }

  @override
  Future<AppointmentModel> cancelAppointment(int id, {String? note}) async =>
      _withStatus(id, AppointmentStatus.cancelled);

  @override
  Future<AppointmentModel> completeAppointment(int id) async =>
      _withStatus(id, AppointmentStatus.completed);

  @override
  Future<AppointmentModel> noShowAppointment(int id) async =>
      _withStatus(id, AppointmentStatus.noShow);

  @override
  Future<AppointmentModel> changeStatus(int id, String status) async =>
      _withStatus(id, status);

  @override
  Future<AvailableSlotsModel> getAvailableSlots({
    required int doctorId,
    required String date,
  }) async => AvailableSlotsModel.fromJson(_slotsJson);
}

void main() {
  late FakeRemote remote;
  late AppointmentRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = AppointmentRepository(remoteDatasource: remote);
  });

  group('AppointmentMapper (swagger shape)', () {
    test('maps nested patient, doctor name, date, history', () {
      final entity = AppointmentModel.fromJson(_apptJson).toDomain();

      expect(entity.id, 7);
      expect(entity.patientId, 1);
      expect(entity.patient?.fullName, 'Петров Иван');
      expect(entity.doctorId, 3);
      expect(entity.doctorName, 'Rustam Keneev');
      expect(entity.dateTime, DateTime.parse('2026-09-07T10:00:00+0300'));
      expect(entity.status, AppointmentStatus.scheduled);
      expect(entity.statusHistory.length, 1);
      expect(entity.statusHistory.first.changedByName, 'test_admin');
    });

    test('doctor name falls back gracefully', () {
      AppointmentModel base(Map<String, dynamic>? detail) =>
          AppointmentModel.fromJson({..._apptJson, 'doctor_detail': detail});

      expect(base(null).toDomain().doctorName, 'Врач');
      expect(
        base(const {'username': 'doc1'}).toDomain().doctorName,
        'doc1',
      );
      expect(
        base(const {'first_name': 'Ай', 'last_name': 'Бек'}).toDomain().doctorName,
        'Ай Бек',
      );
    });

    test('parses live available-slots shape', () {
      final slots = AvailableSlotsModel.fromJson(_slotsJson);

      expect(slots.date, '2026-09-07');
      expect(slots.available_slots.length, 1);
      expect(slots.available_slots.first.available, isTrue);
      expect(slots.available_slots.first.duration, 30);
    });
  });

  group('AppointmentStatus', () {
    test('covers all 6 backend values with RU labels', () {
      expect(AppointmentStatus.values.length, 6);
      expect(AppointmentStatus.displayName('cancelled'), 'Отменён');
      expect(AppointmentStatus.displayName('no_show'), 'Не пришёл');
      expect(AppointmentStatus.displayName('???'), '???');
    });
  });

  group('AppointmentCubit.forDay', () {
    test('filters by local calendar day', () {
      final items = [
        AppointmentModel.fromJson(_apptJson).toDomain(),
        AppointmentModel.fromJson({
          ..._apptJson,
          'id': 8,
          'date_time': '2026-09-08T10:00:00+0300',
        }).toDomain(),
      ];

      final day = AppointmentCubit.forDay(items, DateTime(2026, 9, 7));
      expect(day.map((e) => e.id), [7]);
      expect(AppointmentCubit.forDay(items, DateTime(2026, 9, 9)), isEmpty);
    });
  });

  group('AppointmentRepository', () {
    test('getAppointments returns entity chunk', () async {
      final chunk = await repository.getAppointments(page: 1);

      expect(chunk.items.length, 1);
      expect(chunk.items.first.doctorName, 'Rustam Keneev');
    });

    test('cancelAppointment returns entity with new status', () async {
      final entity = await repository.cancelAppointment(7);

      expect(entity.status, AppointmentStatus.cancelled);
    });

    test('deleteAppointment removes the item', () async {
      await repository.deleteAppointment(7);
      final chunk = await repository.getAppointments(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetAppointmentsUseCase returns chunk', () async {
      final useCase = GetAppointmentsUseCase(_logger(), repository: repository);

      final result = await useCase(const AppointmentsPageParams());

      expect(result.dataOrThrow().items.length, 1);
    });

    test('CompleteAppointmentUseCase returns completed entity', () async {
      final useCase = CompleteAppointmentUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(7);

      expect(result.dataOrThrow().status, AppointmentStatus.completed);
    });

    test('ChangeAppointmentStatusUseCase forwards id+status', () async {
      final useCase = ChangeAppointmentStatusUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(
        const ChangeStatusParams(id: 7, status: AppointmentStatus.rescheduled),
      );

      expect(result.dataOrThrow().status, AppointmentStatus.rescheduled);
    });

    test('CreateAppointmentParams validates ids', () {
      expect(
        CreateAppointmentParams.validateAll(
          patientId: null,
          doctorId: 3,
          dateTime: DateTime(2026, 9, 7, 10),
        ),
        isNotNull,
      );
      expect(
        CreateAppointmentParams.validateAll(
          patientId: 1,
          doctorId: 3,
          dateTime: DateTime(2026, 9, 7, 10),
        ),
        isNull,
      );
      expect(UpdateAppointmentParams.validateStatus('bogus'), isNotNull);
      expect(
        UpdateAppointmentParams.validateStatus(AppointmentStatus.completed),
        isNull,
      );
    });
  });
}
