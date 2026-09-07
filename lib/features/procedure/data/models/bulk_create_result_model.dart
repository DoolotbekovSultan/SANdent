// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'procedure_model.dart';

part 'bulk_create_result_model.freezed.dart';
part 'bulk_create_result_model.g.dart';

/// Result of `POST /procedures/bulk_create/` — live-verified (200):
///
/// ```json
/// {
///   "created": [{ "<full Procedure object with id>" }],
///   "errors": [],
///   "total": 2,
///   "success_count": 2,
///   "error_count": 0
/// }
/// ```
@freezed
abstract class BulkCreateResultModel with _$BulkCreateResultModel {
  const factory BulkCreateResultModel({
    required List<ProcedureModel> created,
    required List<Map<String, dynamic>> errors,
    required int total,
    required int success_count,
    required int error_count,
  }) = _BulkCreateResultModel;

  factory BulkCreateResultModel.fromJson(Map<String, dynamic> json) =>
      _$BulkCreateResultModelFromJson(json);
}
