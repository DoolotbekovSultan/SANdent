import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/auth_interceptor_bindings.dart';
import '../../../user/data/models/user_model.dart';
import '../models/auth_model.dart';
import '../models/requests/login_request.dart';
import '../models/requests/password_reset_requests.dart';
import '../models/requests/register_request.dart';
import 'i_remote_auth_data_source.dart';

/// Real auth API implementation (Django REST, base `.../api/v1/`).
///
/// Uses two HTTP clients: [authClient] (no token interceptor) for
/// login/refresh, and [_authed] (with `NexoAuthInterceptor`) for
/// authenticated calls (`logout`, `me/`).
@LazySingleton(as: IRemoteAuthDataSource, env: [AppEnvironment.prod])
class AuthRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteAuthDataSource {
  AuthRemoteDataSource({
    @Named(authDioName) required DioClient authClient,
    required DioClient authedClient,
    required NexoLogger logger,
  }) : _authed = authedClient,
       super(authClient, logger: logger);

  final DioClient _authed;

  @override
  Future<AuthModel> login(LoginRequest request) async {
    final response = await post('auth/login/', data: request.toJson());
    return AuthModel.fromJson(_asMap(response.data, 'auth/login/'));
  }

  @override
  Future<AuthModel> refreshTokens(String refreshToken) async {
    final response = await post(
      'auth/refresh/',
      data: {'refresh': refreshToken},
    );
    return AuthModel.fromJson(_asMap(response.data, 'auth/refresh/'));
  }

  @override
  Future<void> logout() async {
    // No documented body params for POST /auth/logout/.
    await _authed.post('auth/logout/');
  }

  @override
  Future<String> getUserRole() async {
    final response = await _authed.get('me/');
    final data = _asMap(response.data, 'me/');
    final role = data['role'];
    if (role is! String || role.isEmpty) {
      throw StateError('GET me/ returned no role: $data');
    }
    return role;
  }

  @override
  Future<UserModel> register(RegisterRequest request) async {
    // Registration is pre-login: the unauthenticated client (no token
    // interceptor). Verified live: 201 with the full `User` object.
    final response = await post('auth/register/', data: request.toJson());
    return UserModel.fromJson(_asMap(response.data, 'auth/register/'));
  }

  @override
  Future<String> requestPasswordReset(PasswordResetRequest request) async {
    final response = await post(
      'auth/password-reset/',
      data: request.toJson(),
    );
    return _message(response.data, 'auth/password-reset/');
  }

  @override
  Future<String> confirmPasswordReset(
    PasswordResetConfirmRequest request,
  ) async {
    final response = await post(
      'auth/password-reset/confirm/',
      data: request.toJson(),
    );
    return _message(response.data, 'auth/password-reset/confirm/');
  }

  /// Success envelope `{"message": "..."}` of the password-reset endpoints.
  String _message(dynamic data, String endpoint) {
    final map = _asMap(data, endpoint);
    final message = map['message'];
    if (message is String && message.isNotEmpty) return message;
    throw StateError('Expected {"message"} from $endpoint, got $map');
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
