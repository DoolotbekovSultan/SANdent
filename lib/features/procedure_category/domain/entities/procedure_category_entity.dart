import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_category_entity.freezed.dart';

/// Procedure category (domain).
@freezed
abstract class ProcedureCategoryEntity with _$ProcedureCategoryEntity {
  const factory ProcedureCategoryEntity({
    required int id,
    required String name,
    required String? slug,
    required int? parentId,
    required String? description,
    required int? procedureCount,
    required List<Map<String, dynamic>>? children,
    required bool? isActive,
    required String? createdAt,
    required String? updatedAt,
  }) = _ProcedureCategoryEntity;
}
