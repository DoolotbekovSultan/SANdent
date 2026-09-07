// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_model.freezed.dart';
part 'material_model.g.dart';

/// Material DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/materials/` (200):
///
/// ```json
/// {
///   "id": 1,
///   "name": "Пробный материал",
///   "unit": "шт",
///   "description": "зонд",
///   "is_active": true,
///   "usage_count": 0,
///   "total_used": "0.00",
///   "current_stock": "0.00",
///   "min_stock": "0.00",
///   "needs_restock": true,
///   "created_at": "2026-09-06T14:51:44+0300",
///   "updated_at": "2026-09-06T14:51:44+0300"
/// }
/// ```
///
/// Notes from live probing (director writes; probes cleaned):
/// - List is PAGED (doctor+director 200, admin 403); single `POST`/`PATCH`
///   echo without `id` (repository resolves/re-fetches); `DELETE` → 204.
/// - Stock decimals arrive as STRINGS (`"0.00"`) — parse with validation.
/// - `needs_restock=true` at stock 0 (verified).
/// - `PATCH` with `min_stock` is silently ignored (stock thresholds are
///   create-time `initial_quantity`/`min_quantity` per swagger — unverified).
/// - `GET materials/stocks/` and `/materials/statistics/` → 404 (absent).
/// - `GET /{id}/transactions/` → bare array (200).
/// - BLOCKER: `POST /{id}/add_stock/` and `/subtract_stock/` → 500 on valid
///   `{"quantity":"10.00"}` (backend bug, same class as appointments POST).
///   Working path for stock changes: direct `POST /material-transactions/`.
/// - Deleting a transaction does NOT reverse `current_stock` (verified).
@freezed
abstract class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    required int id,
    required String name,
    required String unit,
    required String? description,
    required bool? is_active,
    required int? usage_count,
    required String? total_used,
    required String? current_stock,
    required String? min_stock,
    required bool? needs_restock,
    required String? created_at,
    required String? updated_at,
  }) = _MaterialModel;

  factory MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialModelFromJson(json);
}
