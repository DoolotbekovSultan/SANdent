/// Login request body for `POST /auth/login/`.
///
/// Backend contract (`TokenObtainPair` in swagger): `username` + `password`.
/// No email, no role — the role is read from `GET /me/` after login.
class LoginRequest {
  const LoginRequest({required this.username, required this.password});

  final String username;
  final String password;

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
  };
}
