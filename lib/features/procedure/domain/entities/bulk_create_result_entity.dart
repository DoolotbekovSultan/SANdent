import 'package:freezed_annotation/freezed_annotation.dart';

import 'procedure_entity.dart';

part 'bulk_create_result_entity.freezed.dart';

/// Bulk-create result (domain).
@freezed
abstract class BulkCreateResultEntity with _$BulkCreateResultEntity {
  const factory BulkCreateResultEntity({
    required List<ProcedureEntity> created,
    required int total,
    required int successCount,
    required int errorCount,
  }) = _BulkCreateResultEntity;
}
