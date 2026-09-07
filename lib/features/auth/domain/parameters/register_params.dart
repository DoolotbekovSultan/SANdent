import 'package:nexo/nexo_core.dart';

/// Parameters for [RegisterUseCase] (`POST /auth/register/`).
///
/// No `role` — the role is assigned by management, never chosen at
/// registration.
class RegisterParams {
  const RegisterParams({
    required this.username,
    required this.password,
    required this.password2,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
  });

  final String username;
  final String password;
  final String password2;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;

  static String? validateUsername(String? value) =>
      NexoValidators.requiredField(fieldName: 'Логин')(value?.trim());

  static String? validatePassword(String? value) =>
      NexoValidators.compose<String>([
        NexoValidators.requiredField(fieldName: 'Пароль'),
        NexoValidators.password(),
      ])(value);

  static String? validatePassword2(String? password, String? password2) {
    if (password2 == null || password2.isEmpty) {
      return 'Повторите пароль';
    }
    if (password != password2) return 'Пароли не совпадают';
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    return NexoValidators.phone(fieldName: 'Телефон')(value.trim());
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    return NexoValidators.email(fieldName: 'Email')(value.trim());
  }

  /// Returns null when valid, otherwise the first error message.
  static String? validateAll({
    required String? username,
    required String? password,
    required String? password2,
    String? phone,
    String? email,
  }) {
    return validateUsername(username) ??
        validatePassword(password) ??
        validatePassword2(password, password2) ??
        validatePhone(phone) ??
        validateEmail(email);
  }
}
