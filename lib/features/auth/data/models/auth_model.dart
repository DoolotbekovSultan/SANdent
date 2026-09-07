import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

/// Token pair from the backend (SimpleJWT-style, rotation ON).
///
/// Live-verified contract (test_admin):
/// `POST /auth/login/` (200) and `POST /auth/refresh/` (200) BOTH return
/// `{"access", "refresh"}` — every refresh MUST persist the new refresh
/// token, never reuse the old one.
///
/// ```json
/// {
///   "refresh": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ...<truncated>",
///   "access": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ...<truncated>"
/// }
/// ```
@freezed
abstract class AuthModel with _$AuthModel {
  const factory AuthModel({required String access, required String refresh}) =
      _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
