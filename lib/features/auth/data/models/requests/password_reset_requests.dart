/// Password-reset request bodies.
///
/// Backend contracts (verified live 2026-09-07 — note there is NO `code`
/// field anywhere, unlike the initial assumption):
/// - `POST /auth/password-reset/` with `{email}` → 200 `{"message": ...}`;
///   unknown email → 400 `{"email": ["Пользователь с таким email не найден"]}`.
/// - `POST /auth/password-reset/confirm/` with `{uid, token, new_password,
///   new_password2}` (uid/token arrive via the email link) → 200
///   `{"message": ...}`; bad link → 400 `{"error": "Недействительная ссылка"}`.
class PasswordResetRequest {
  const PasswordResetRequest({required this.email});

  final String email;

  Map<String, dynamic> toJson() => {'email': email};
}

class PasswordResetConfirmRequest {
  const PasswordResetConfirmRequest({
    required this.uid,
    required this.token,
    required this.newPassword,
    required this.newPassword2,
  });

  final String uid;
  final String token;
  final String newPassword;
  final String newPassword2;

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'token': token,
    'new_password': newPassword,
    'new_password2': newPassword2,
  };
}
