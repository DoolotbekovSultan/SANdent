import '../models/clinic_model.dart';
import '../../domain/entities/clinic_entity.dart';

extension ClinicMapper on ClinicModel {
  ClinicEntity toDomain() => ClinicEntity(
    id: id,
    name: name,
    address: address,
    phone: phone,
    email: email,
    isActive: is_active,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension ClinicListMapper on List<ClinicModel> {
  List<ClinicEntity> toDomain() => map((e) => e.toDomain()).toList();
}
