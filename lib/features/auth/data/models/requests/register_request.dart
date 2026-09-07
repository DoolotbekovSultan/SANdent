/// Register request body for `POST /auth/register/`.
///
/// Backend contract (swagger `UserCreate`, verified live): `username` +
/// `password` + `password2` are required; `first_name`/`last_name`/`phone`/
/// `email` are optional. NO `role` — the role is assigned by management,
/// never chosen at registration (the response is a bare `User` object
/// without tokens; login afterwards is a separate request).
class RegisterRequest {
  const RegisterRequest({
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

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
    'password2': password2,
    if (firstName != null && firstName!.isNotEmpty) 'first_name': firstName,
    if (lastName != null && lastName!.isNotEmpty) 'last_name': lastName,
    if (phone != null && phone!.isNotEmpty) 'phone': phone,
    if (email != null && email!.isNotEmpty) 'email': email,
  };
}
