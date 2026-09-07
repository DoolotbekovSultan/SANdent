import '../../../user/data/models/user_model.dart';
import '../models/auth_model.dart';
import '../models/requests/login_request.dart';
import '../models/requests/password_reset_requests.dart';
import '../models/requests/register_request.dart';

/// Remote auth API: `POST auth/login/`, `POST auth/refresh/`,
/// `POST auth/logout/`, `GET me/` (role only) + registration/password-reset.
///
/// The canonical `User` entity (full `GET /me/` parsing) lives in the
/// user feature (F7/F10); `register` reuses [UserModel] — no duplicate type.
/// Password-reset endpoints answer `{"message": ...}` — the datasource
/// returns the message string directly.
abstract interface class IRemoteAuthDataSource {
  Future<AuthModel> login(LoginRequest request);
  Future<AuthModel> refreshTokens(String refreshToken);
  Future<void> logout();
  Future<String> getUserRole();

  /// `POST auth/register/` → 201 `User` (NO tokens — login afterwards is a
  /// separate request).
  Future<UserModel> register(RegisterRequest request);

  /// `POST auth/password-reset/` (`{email}`) → success message.
  Future<String> requestPasswordReset(PasswordResetRequest request);

  /// `POST auth/password-reset/confirm/` (`{uid, token, new_password,
  /// new_password2}`) → success message.
  Future<String> confirmPasswordReset(PasswordResetConfirmRequest request);
}
