import 'package:nexo/nexo_core.dart';

/// Parameters for [LoginUseCase].
class LoginParams {
  const LoginParams({required this.username, required this.password});

  final String username;
  final String password;

  static String? validateUsername(String? value) {
    return NexoValidators.requiredField(fieldName: 'Имя пользователя')(
      value?.trim(),
    );
  }

  static String? validatePassword(String? value) {
    return NexoValidators.requiredField(fieldName: 'Пароль')(value);
  }

  /// Returns null when valid, otherwise the first error message.
  static String? validateAll({
    required String? username,
    required String? password,
  }) {
    return validateUsername(username) ?? validatePassword(password);
  }
}
