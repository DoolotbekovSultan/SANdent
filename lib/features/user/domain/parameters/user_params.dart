import 'package:nexo/nexo_core.dart';

import '../entities/user_entity.dart';

/// Parameters for [CreateUserUseCase].
class CreateUserParams {
  const CreateUserParams({
    required this.username,
    required this.password,
    required this.password2,
    this.email,
    this.firstName,
    this.lastName,
    this.role,
    this.phone,
    this.clinicId,
  });

  final String username;
  final String password;
  final String password2;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? role;
  final String? phone;
  final int? clinicId;

  static String? validateUsername(String? value) =>
      NexoValidators.requiredField(fieldName: 'Логин')(value?.trim());

  static String? validatePassword(String? value) =>
      NexoValidators.compose<String>([
        NexoValidators.requiredField(fieldName: 'Пароль'),
        NexoValidators.password(),
      ])(value);

  static String? validateRole(String? value) {
    if (value == null) return null;
    if (!UserRole.values.contains(value)) return 'Неизвестная роль';
    return null;
  }
}

/// Parameters for [UpdateUserUseCase] (PATCH).
class UpdateUserParams {
  const UpdateUserParams({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.role,
    this.clinicId,
    this.isActive,
  });

  final int id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? role;
  final int? clinicId;
  final bool? isActive;
}
