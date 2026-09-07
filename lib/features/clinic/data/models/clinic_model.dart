// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_model.freezed.dart';
part 'clinic_model.g.dart';

@freezed
abstract class ClinicModel with _$ClinicModel {
  const factory ClinicModel({
    required int id,
    required String name,
    required String address,
    required String phone,
    required String? email,
    required bool? is_active,
    required String? created_at,
    required String? updated_at,
  }) = _ClinicModel;

  factory ClinicModel.fromJson(Map<String, dynamic> json) =>
      _$ClinicModelFromJson(json);
}
