import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/patient_model.dart';
import '../models/patient_statistics_model.dart';
import '../models/patient_stats_model.dart';
import 'i_remote_patient_data_source.dart';

/// Offline/mock patients backend for dev without a token.
@LazySingleton(as: IRemotePatientDataSource, env: [AppEnvironment.mock])
class MockPatientRemoteDataSource implements IRemotePatientDataSource {
  static const _items = [
    PatientModel(
      id: 1,
      first_name: 'Иван',
      last_name: 'Петров',
      middle_name: 'Сергеевич',
      full_name: 'Петров Иван Сергеевич',
      short_name: 'Петров И. С.',
      date_of_birth: '1990-01-15',
      age: 36,
      age_group: 'young_adult',
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
      total_appointments: 2,
      completed_appointments: 1,
      cancelled_appointments: 0,
      last_appointment: null,
      documents: null,
      created_at: null,
      updated_at: null,
    ),
  ];

  @override
  Future<PageChunk<PatientModel, int>> getPatients({
    required int page,
    String? search,
  }) async {
    final items = search == null || search.isEmpty
        ? _items
        : _items.where((p) => p.full_name.contains(search)).toList();
    return PageChunk(items: items, nextCursor: null, hasMore: false);
  }

  @override
  Future<PageChunk<PatientModel, int>> searchPatients(String query) =>
      getPatients(page: 1, search: query);

  @override
  Future<PatientModel> getPatientById(int id) async => _items.firstWhere(
    (p) => p.id == id,
    orElse: () => throw StateError('No mock patient $id'),
  );

  @override
  Future<Map<String, dynamic>> createPatient(Map<String, dynamic> body) async =>
      body;

  @override
  Future<void> updatePatient(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deletePatient(int id) async {}

  @override
  Future<PatientStatsModel> getPatientStats(int id) async =>
      const PatientStatsModel(
        total_appointments: 2,
        completed: 1,
        cancelled: 0,
        no_show: 0,
        last_visit: null,
        first_visit: null,
        avg_gap_days: null,
      );

  @override
  Future<PatientStatisticsModel> getStatistics() async =>
      const PatientStatisticsModel(
        total: 25,
        by_gender: null,
        by_age_group: {'child': 3, 'young_adult': 8, 'adult': 10, 'senior': 4},
        new_this_month: 5,
        new_this_week: 2,
        new_today: 0,
        active: 20,
        inactive: 5,
      );
}
