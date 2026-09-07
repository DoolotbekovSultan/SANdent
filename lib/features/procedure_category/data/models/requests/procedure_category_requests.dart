/// Create-category body for `POST /procedure-categories/`.
/// Required: `name`.
class CreateProcedureCategoryRequest {
  const CreateProcedureCategoryRequest({
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

  Map<String, dynamic> toJson() => {
    'name': name,
    if (slug != null) 'slug': slug,
    if (parentId != null) 'parent': parentId,
    if (description != null) 'description': description,
    if (isActive != null) 'is_active': isActive,
  };
}

/// Partial-update body for `PATCH /procedure-categories/{id}/`.
class UpdateProcedureCategoryRequest {
  const UpdateProcedureCategoryRequest({
    this.name,
    this.slug,
    this.parentId,
    this.description,
    this.isActive,
  });

  final String? name;
  final String? slug;
  final int? parentId;
  final String? description;
  final bool? isActive;

  Map<String, dynamic> toJson() => {
    if (name != null) 'name': name,
    if (slug != null) 'slug': slug,
    if (parentId != null) 'parent': parentId,
    if (description != null) 'description': description,
    if (isActive != null) 'is_active': isActive,
  };
}
