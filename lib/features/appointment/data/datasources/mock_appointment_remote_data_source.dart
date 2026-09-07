import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../../../patient/data/models/patient_model.dart';
import '../models/appointment_model.dart';
import '../models/available_slots_model.dart';
import 'i_remote_appointment_data_source.dart';

/// Offline/mock appointments backend for dev without data.
@LazySingleton(as: IRemoteAppointmentDataSource, env: [AppEnvironment.mock])
class MockAppointmentRemoteDataSource implements IRemoteAppointmentDataSource {
  static const _items = [
    AppointmentModel(
      id: 1,
      patient: 1,
      patient_detail: PatientModel(
        id: 1,
        first_name: 'Иван',
        last_name: 'Петров',
        middle_name: null,
        full_name: 'Петров Иван',
        short_name: null,
        date_of_birth: '1990-01-15',
        age: 36,
        age_group: null,
        gender: 'male',
        phone: '+996555000111',
        email: null,
        address: null,
        inn: null,
        snils: null,
        policy_number: null,
        allergies: null,
        chronic_diseases: null,
        notes: null,
        total_appointments: 0,
        completed_appointments: 0,
        cancelled_appointments: 0,
        last_appointment: null,
        documents: null,
        created_at: null,
        updated_at: null,
      ),
      doctor: 3,
      doctor_detail: {
        'id': 3,
        'full_name': 'Rustam Keneev',
        'username': 'RustamKeneev',
      },
      clinic: null,
      clinic_detail: null,
      date_time: '2026-09-07T09:00:00+0300',
      duration: 30,
      end_time: '2026-09-07T09:30:00+0300',
      status: 'scheduled',
      status_display: 'Запланирован',
      notes: null,
      created_by: null,
      created_at: null,
      updated_at: null,
      sync_status: 'synced',
      device_id: null,
      status_history: [],
    ),
  ];

  @override
  Future<PageChunk<AppointmentModel, int>> getAppointments({
    required int page,
    String? search,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<AppointmentModel> getAppointmentById(int id) async => _items.first;

  @override
  Future<AppointmentModel> createAppointment(
    Map<String, dynamic> body,
  ) async => _items.first;

  @override
  Future<AppointmentModel> updateAppointment(
    int id,
    Map<String, dynamic> body,
  ) async => _items.first;

  @override
  Future<void> deleteAppointment(int id) async {}

  @override
  Future<AppointmentModel> cancelAppointment(int id, {String? note}) async =>
      _items.first;

  @override
  Future<AppointmentModel> completeAppointment(int id) async => _items.first;

  @override
  Future<AppointmentModel> noShowAppointment(int id) async => _items.first;

  @override
  Future<AppointmentModel> changeStatus(int id, String status) async =>
      _items.first;

  @override
  Future<AvailableSlotsModel> getAvailableSlots({
    required int doctorId,
    required String date,
  }) async => AvailableSlotsModel(
    doctor: const {'id': 3, 'name': 'Rustam Keneev'},
    date: date,
    available_slots: const [],
  );
}
