import 'package:nexo/nexo_core.dart';

/// Parameters for [CreateMaterialUseCase].
class CreateMaterialParams {
  const CreateMaterialParams({
    required this.name,
    required this.unit,
    this.description,
    this.isActive,
  });

  final String name;
  final String unit;
  final String? description;
  final bool? isActive;

  static String? validateName(String? value) =>
      NexoValidators.requiredField(fieldName: 'Название')(value?.trim());

  static String? validateUnit(String? value) =>
      NexoValidators.requiredField(fieldName: 'Единица')(value?.trim());
}

/// Parameters for [UpdateMaterialUseCase] (PATCH).
class UpdateMaterialParams {
  const UpdateMaterialParams({
    required this.id,
    this.name,
    this.unit,
    this.description,
    this.isActive,
  });

  final int id;
  final String? name;
  final String? unit;
  final String? description;
  final bool? isActive;
}
