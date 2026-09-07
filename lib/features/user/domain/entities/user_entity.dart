import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

/// Backend roles (`User.role`).
abstract final class UserRole {
  static const doctor = 'doctor';
  static const director = 'director';
  static const admin = 'admin';
  static const receptionist = 'receptionist';

  static const values = [doctor, director, admin, receptionist];
}

/// User (domain). Display name falls back to `username` when the backend
/// `full_name` is empty (common for fresh test users — verified live).
@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String username,
    required String? email,
    required String? firstName,
    required String? lastName,
    required String? fullName,
    required String? role,
    required String? roleDisplay,
    required String? phone,
    required int? clinicId,
    required String? clinicName,
    required bool? isActive,
    required String? lastLogin,
    required String? dateJoined,
    required String? createdAt,
    required String? updatedAt,
  }) = _UserEntity;

  const UserEntity._();

  String get displayName {
    final full = fullName?.trim() ?? '';
    if (full.isNotEmpty) return full;
    return username;
  }
}
