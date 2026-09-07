import 'package:nexo/nexo_core.dart';

/// Parameters for [RequestPasswordResetUseCase] (`POST /auth/password-reset/`).
class RequestPasswordResetParams {
  const RequestPasswordResetParams({required this.email});

  final String email;

  static String? validateEmail(String? value) =>
      NexoValidators.compose<String>([
        NexoValidators.requiredField(fieldName: 'Email'),
        NexoValidators.email(fieldName: 'Email'),
      ])(value?.trim());
}

/// Parameters for [ConfirmPasswordResetUseCase]
/// (`POST /auth/password-reset/confirm/`).
///
/// `uid` + `token` arrive via the email link (there is no numeric `code`
/// on the backend — verified live).
class ConfirmPasswordResetParams {
  const ConfirmPasswordResetParams({
    required this.uid,
    required this.token,
    required this.newPassword,
    required this.newPassword2,
  });

  final String uid;
  final String token;
  final String newPassword;
  final String newPassword2;

  static String? validateAll({
    required String? uid,
    required String? token,
    required String? newPassword,
    required String? newPassword2,
  }) {
    if (uid == null || uid.trim().isEmpty) {
      return 'Вставьте uid из письма';
    }
    if (token == null || token.trim().isEmpty) {
      return 'Вставьте token из письма';
    }
    final passwordError = NexoValidators.compose<String>([
      NexoValidators.requiredField(fieldName: 'Новый пароль'),
      NexoValidators.password(),
    ])(newPassword);
    if (passwordError != null) return passwordError;
    if (newPassword != newPassword2) return 'Пароли не совпадают';
    return null;
  }
}
