import 'package:nexo/nexo_core.dart';

/// Parameters for [CreateProcedureUseCase].
class CreateProcedureParams {
  const CreateProcedureParams({
    required this.name,
    this.code,
    this.categoryId,
    this.description,
    this.price,
    this.durationMinutes,
    this.isActive,
  });

  final String name;
  final String? code;
  final int? categoryId;
  final String? description;
  final String? price;
  final int? durationMinutes;
  final bool? isActive;

  static String? validateName(String? value) =>
      NexoValidators.requiredField(fieldName: 'Название')(value?.trim());
}

/// Parameters for [UpdateProcedureUseCase] — all fields optional (PATCH).
class UpdateProcedureParams {
  const UpdateProcedureParams({
    required this.id,
    this.name,
    this.code,
    this.categoryId,
    this.description,
    this.price,
    this.durationMinutes,
    this.isActive,
  });

  final int id;
  final String? name;
  final String? code;
  final int? categoryId;
  final String? description;
  final String? price;
  final int? durationMinutes;
  final bool? isActive;
}
