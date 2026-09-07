// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_model.freezed.dart';
part 'procedure_model.g.dart';

/// Procedure DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/procedures/` (200):
///
/// ```json
/// {
///   "id": 2,
///   "name": "Балк 1",
///   "code": "Б1",
///   "category": null,
///   "description": "",
///   "price": "10.00",
///   "duration_minutes": null,
///   "is_active": true,
///   "usage_count": 0,
///   "total_revenue": "0.00",
///   "created_at": "2026-09-06T14:54:28+0300",
///   "updated_at": "2026-09-06T14:54:28+0300"
/// }
/// ```
///
/// Notes from live probing (director role; probes cleaned):
/// - List is PAGED `{count,next,previous,results}` (doctor+director 200, admin 403).
/// - `code` is auto-generated from name initials when omitted.
/// - `price`/`total_revenue` are decimal-strings; `duration_minutes` may be null.
/// - Single `POST`/`PATCH` return an echo without `id`/counters (repository
///   resolves via search / re-GET); `bulk_create` returns full objects.
/// - `GET /procedures/statistics/` → 404 (absent on server).
@freezed
abstract class ProcedureModel with _$ProcedureModel {
  const factory ProcedureModel({
    required int id,
    required String name,
    required String? code,
    required int? category,
    required String? category_name,
    required String? description,
    required String? price,
    required int? duration_minutes,
    required bool? is_active,
    required int? usage_count,
    required String? total_revenue,
    required String? created_at,
    required String? updated_at,
  }) = _ProcedureModel;

  factory ProcedureModel.fromJson(Map<String, dynamic> json) =>
      _$ProcedureModelFromJson(json);
}
