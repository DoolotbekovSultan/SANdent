/// Create-patient body for `POST /patients/` (backend snake_case keys).
///
/// Required by the backend: `first_name`, `last_name`, `date_of_birth`
/// (`YYYY-MM-DD`), `gender` (`male`/`female`), `phone`.
class CreatePatientRequest {
  const CreatePatientRequest({
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.dateOfBirth,
    required this.gender,
    required this.phone,
    this.email,
    this.address,
    this.inn,
    this.snils,
    this.policyNumber,
    this.allergies,
    this.chronicDiseases,
    this.notes,
  });

  final String firstName;
  final String lastName;
  final String? middleName;
  final String dateOfBirth;
  final String gender;
  final String phone;
  final String? email;
  final String? address;
  final String? inn;
  final String? snils;
  final String? policyNumber;
  final String? allergies;
  final String? chronicDiseases;
  final String? notes;

  Map<String, dynamic> toJson() => {
    'first_name': firstName,
    'last_name': lastName,
    if (middleName != null) 'middle_name': middleName,
    'date_of_birth': dateOfBirth,
    'gender': gender,
    'phone': phone,
    if (email != null) 'email': email,
    if (address != null) 'address': address,
    if (inn != null) 'inn': inn,
    if (snils != null) 'snils': snils,
    if (policyNumber != null) 'policy_number': policyNumber,
    if (allergies != null) 'allergies': allergies,
    if (chronicDiseases != null) 'chronic_diseases': chronicDiseases,
    if (notes != null) 'notes': notes,
  };
}

/// Partial-update body for `PATCH /patients/{id}/` — only non-null
/// fields are sent (verified live: echo of sent fields, 200).
class UpdatePatientRequest {
  const UpdatePatientRequest({
    this.firstName,
    this.lastName,
    this.middleName,
    this.dateOfBirth,
    this.gender,
    this.phone,
    this.email,
    this.address,
    this.inn,
    this.snils,
    this.policyNumber,
    this.allergies,
    this.chronicDiseases,
    this.notes,
  });

  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? dateOfBirth;
  final String? gender;
  final String? phone;
  final String? email;
  final String? address;
  final String? inn;
  final String? snils;
  final String? policyNumber;
  final String? allergies;
  final String? chronicDiseases;
  final String? notes;

  Map<String, dynamic> toJson() => {
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (middleName != null) 'middle_name': middleName,
    if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
    if (gender != null) 'gender': gender,
    if (phone != null) 'phone': phone,
    if (email != null) 'email': email,
    if (address != null) 'address': address,
    if (inn != null) 'inn': inn,
    if (snils != null) 'snils': snils,
    if (policyNumber != null) 'policy_number': policyNumber,
    if (allergies != null) 'allergies': allergies,
    if (chronicDiseases != null) 'chronic_diseases': chronicDiseases,
    if (notes != null) 'notes': notes,
  };
}
