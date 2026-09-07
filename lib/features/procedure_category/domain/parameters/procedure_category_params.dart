import 'package:nexo/nexo_core.dart';

/// Parameters for [CreateProcedureCategoryUseCase].
class CreateProcedureCategoryParams {
  const CreateProcedureCategoryParams({
    required this.name,
    this.slug,
    this.parentId,
    this.description,
    this.isActive,
  });

  final String name;
  final String? slug;
  final int? parentId;
  final String? description;
  final bool? isActive;

  static String? validateName(String? value) =>
      NexoValidators.requiredField(fieldName: 'Название')(value?.trim());
}

/// Parameters for [UpdateProcedureCategoryUseCase] (PATCH).
class UpdateProcedureCategoryParams {
  const UpdateProcedureCategoryParams({
    required this.id,
    this.name,
    this.slug,
    this.parentId,
    this.description,
    this.isActive,
  });

  final int id;
  final String? name;
  final String? slug;
  final int? parentId;
  final String? description;
  final bool? isActive;
}
