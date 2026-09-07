import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_entity.freezed.dart';

/// Clinic branch (domain).
@freezed
abstract class ClinicEntity with _$ClinicEntity {
  const factory ClinicEntity({
    required int id,
    required String name,
    required String address,
    required String phone,
    required String? email,
    required bool? isActive,
    required String? createdAt,
    required String? updatedAt,
  }) = _ClinicEntity;
}
