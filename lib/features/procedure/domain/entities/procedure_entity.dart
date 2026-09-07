import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_entity.freezed.dart';

/// Procedure (domain). Decimal-string `price`/`totalRevenue` are parsed
/// where needed with format validation (backend sends `"10.00"`).
@freezed
abstract class ProcedureEntity with _$ProcedureEntity {
  const factory ProcedureEntity({
    required int id,
    required String name,
    required String? code,
    required int? categoryId,
    required String? categoryName,
    required String? description,
    required String? price,
    required int? durationMinutes,
    required bool? isActive,
    required int? usageCount,
    required String? totalRevenue,
    required String? createdAt,
    required String? updatedAt,
  }) = _ProcedureEntity;
}
