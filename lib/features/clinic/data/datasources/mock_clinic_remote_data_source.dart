import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/clinic_model.dart';
import 'i_remote_clinic_data_source.dart';

/// Offline/mock clinics backend.
@LazySingleton(as: IRemoteClinicDataSource, env: [AppEnvironment.mock])
class MockClinicRemoteDataSource implements IRemoteClinicDataSource {
  @override
  Future<PageChunk<ClinicModel, int>> getClinics({required int page}) async =>
      const PageChunk(items: [], nextCursor: null, hasMore: false);

  @override
  Future<ClinicModel> getClinicById(int id) async => throw StateError('none');

  @override
  Future<ClinicModel> createClinic(Map<String, dynamic> body) async =>
      const ClinicModel(
        id: 1, name: 'Клиника', address: 'Адрес', phone: '+996555000',
        email: null, is_active: true, created_at: null, updated_at: null,
      );

  @override
  Future<ClinicModel> updateClinic(int id, Map<String, dynamic> body) async =>
      getClinicById(id);

  @override
  Future<void> deleteClinic(int id) async {}
}
