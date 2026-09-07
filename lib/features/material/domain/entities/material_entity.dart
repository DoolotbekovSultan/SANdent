import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_entity.freezed.dart';

/// Material (domain). Stock decimals stay strings (backend format);
/// parse to num only where arithmetic is needed, with format validation.
@freezed
abstract class MaterialEntity with _$MaterialEntity {
  const factory MaterialEntity({
    required int id,
    required String name,
    required String unit,
    required String? description,
    required bool? isActive,
    required int? usageCount,
    required String? totalUsed,
    required String? currentStock,
    required String? minStock,
    required bool? needsRestock,
    required String? createdAt,
    required String? updatedAt,
  }) = _MaterialEntity;
}
