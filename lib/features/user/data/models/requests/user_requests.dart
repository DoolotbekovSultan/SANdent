/// Create-user body for `POST /users/` (backend snake_case keys).
/// Required: `username`, `password`, `password2`.
class CreateUserRequest {
  const CreateUserRequest({
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

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
    'password2': password2,
    if (email != null) 'email': email,
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (role != null) 'role': role,
    if (phone != null) 'phone': phone,
    if (clinicId != null) 'clinic': clinicId,
  };
}

/// Partial-update body for `PATCH /users/{id}/` and `PATCH /me/`.
class UpdateUserRequest {
  const UpdateUserRequest({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.role,
    this.clinicId,
    this.isActive,
  });

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? role;
  final int? clinicId;
  final bool? isActive;

  Map<String, dynamic> toJson() => {
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (email != null) 'email': email,
    if (phone != null) 'phone': phone,
    if (role != null) 'role': role,
    if (clinicId != null) 'clinic': clinicId,
    if (isActive != null) 'is_active': isActive,
  };
}
