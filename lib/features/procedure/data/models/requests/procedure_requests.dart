/// Create-procedure body for `POST /procedures/` (backend snake_case keys).
/// Required: `name`. `code` auto-generates from name initials when omitted.
class CreateProcedureRequest {
  const CreateProcedureRequest({
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

  Map<String, dynamic> toJson() => {
    'name': name,
    if (code != null) 'code': code,
    if (categoryId != null) 'category': categoryId,
    if (description != null) 'description': description,
    if (price != null) 'price': price,
    if (durationMinutes != null) 'duration_minutes': durationMinutes,
    if (isActive != null) 'is_active': isActive,
  };
}

/// Partial-update body for `PATCH /procedures/{id}/`.
class UpdateProcedureRequest {
  const UpdateProcedureRequest({
    this.name,
    this.code,
    this.categoryId,
    this.description,
    this.price,
    this.durationMinutes,
    this.isActive,
  });

  final String? name;
  final String? code;
  final int? categoryId;
  final String? description;
  final String? price;
  final int? durationMinutes;
  final bool? isActive;

  Map<String, dynamic> toJson() => {
    if (name != null) 'name': name,
    if (code != null) 'code': code,
    if (categoryId != null) 'category': categoryId,
    if (description != null) 'description': description,
    if (price != null) 'price': price,
    if (durationMinutes != null) 'duration_minutes': durationMinutes,
    if (isActive != null) 'is_active': isActive,
  };
}
