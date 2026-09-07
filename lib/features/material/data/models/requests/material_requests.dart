/// Create-material body for `POST /materials/` (backend snake_case keys).
/// Required: `name`, `unit`.
class CreateMaterialRequest {
  const CreateMaterialRequest({
    required this.name,
    required this.unit,
    this.description,
    this.isActive,
  });

  final String name;
  final String unit;
  final String? description;
  final bool? isActive;

  Map<String, dynamic> toJson() => {
    'name': name,
    'unit': unit,
    if (description != null) 'description': description,
    if (isActive != null) 'is_active': isActive,
  };
}

/// Partial-update body for `PATCH /materials/{id}/`.
class UpdateMaterialRequest {
  const UpdateMaterialRequest({
    this.name,
    this.unit,
    this.description,
    this.isActive,
  });

  final String? name;
  final String? unit;
  final String? description;
  final bool? isActive;

  Map<String, dynamic> toJson() => {
    if (name != null) 'name': name,
    if (unit != null) 'unit': unit,
    if (description != null) 'description': description,
    if (isActive != null) 'is_active': isActive,
  };
}
