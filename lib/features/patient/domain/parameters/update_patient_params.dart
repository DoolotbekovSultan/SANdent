/// Parameters for [UpdatePatientUseCase] — all fields optional (PATCH).
class UpdatePatientParams {
  const UpdatePatientParams({
    required this.id,
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

  final int id;
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
}
