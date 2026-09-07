import 'package:nexo/nexo_core.dart';

class CreateClinicParams {
  const CreateClinicParams({
    required this.name,
    required this.address,
    required this.phone,
    this.email,
  });

  final String name;
  final String address;
  final String phone;
  final String? email;

  static String? validateName(String? v) =>
      NexoValidators.requiredField(fieldName: 'Название')(v?.trim());
  static String? validateAddress(String? v) =>
      NexoValidators.requiredField(fieldName: 'Адрес')(v?.trim());
  static String? validatePhone(String? v) =>
      NexoValidators.compose<String>([
        NexoValidators.requiredField(fieldName: 'Телефон'),
        NexoValidators.phone(),
      ])(v?.trim());
}
