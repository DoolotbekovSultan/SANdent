import 'package:nexo/nexo_core.dart';

/// Valid backend genders (verified live in `Patient.gender`).
abstract final class PatientGender {
  static const male = 'male';
  static const female = 'female';
  static const values = [male, female];
}

/// Parameters for [CreatePatientUseCase].
class CreatePatientParams {
  const CreatePatientParams({
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

  static String? validateRequired(String? value, String fieldName) =>
      NexoValidators.requiredField(fieldName: fieldName)(value?.trim());

  static String? validatePhone(String? value) =>
      NexoValidators.compose<String>([
        NexoValidators.requiredField(fieldName: 'Телефон'),
        NexoValidators.phone(),
      ])(value?.trim());

  static String? validateGender(String? value) {
    final required = validateRequired(value, 'Пол');
    if (required != null) return required;
    if (!PatientGender.values.contains(value)) return 'Пол: male/female';
    return null;
  }

  /// Returns null when valid, otherwise the first error message.
  static String? validateAll({
    required String? firstName,
    required String? lastName,
    required String? dateOfBirth,
    required String? gender,
    required String? phone,
  }) {
    return validateRequired(firstName, 'Имя') ??
        validateRequired(lastName, 'Фамилия') ??
        validateRequired(dateOfBirth, 'Дата рождения') ??
        validateGender(gender) ??
        validatePhone(phone);
  }
}
