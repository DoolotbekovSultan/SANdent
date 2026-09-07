import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/clinic_entity.dart';
import '../../domain/parameters/create_clinic_params.dart';
import '../../domain/parameters/update_clinic_params.dart';
import '../../domain/repositories/i_clinic_repository.dart';
import '../datasources/i_remote_clinic_data_source.dart';
import '../mappers/clinic_mapper.dart';

@LazySingleton(as: IClinicRepository)
class ClinicRepository implements IClinicRepository {
  ClinicRepository({required this._remoteDatasource});

  final IRemoteClinicDataSource _remoteDatasource;

  @override
  Future<PageChunk<ClinicEntity, int>> getClinics({required int page}) async {
    final chunk = await _remoteDatasource.getClinics(page: page);
    return PageChunk<ClinicEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<ClinicEntity> getClinicById(int id) async {
    final model = await _remoteDatasource.getClinicById(id);
    return model.toDomain();
  }

  @override
  Future<ClinicEntity> createClinic(CreateClinicParams params) async {
    final model = await _remoteDatasource.createClinic({
      'name': params.name.trim(),
      'address': params.address.trim(),
      'phone': params.phone.trim(),
      if (params.email != null) 'email': params.email,
    });
    return model.toDomain();
  }

  @override
  Future<ClinicEntity> updateClinic(UpdateClinicParams params) async {
    // final body = <String, dynamic>{};
    // if (params.name != null) body['name'] = params.name;
    // if (params.address != null) body['address'] = params.address;
    // if (params.phone != null) body['phone'] = params.phone;
    // if (params.email != null) body['email'] = params.email;
    // if (params.isActive != null) body['is_active'] = params.isActive;
    final model = await _remoteDatasource.updateClinic(params.id, {
      'name': ?params.name,
      'address': ?params.address,
      'phone': ?params.phone,
      'email': ?params.email,
      'is_active': ?params.isActive
    });
    return model.toDomain();
  }

  @override
  Future<void> deleteClinic(int id) => _remoteDatasource.deleteClinic(id);
}
