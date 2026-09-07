// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_transaction_model.freezed.dart';
part 'material_transaction_model.g.dart';

/// Stock transaction DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/materials/2/transactions/` (200):
///
/// ```json
/// {
///   "id": 1,
///   "material": 2,
///   "material_name": "Диагност",
///   "transaction_type": "income",
///   "transaction_type_display": "Поступление",
///   "quantity": "5.00",
///   "note": "зонд",
///   "created_by": 6,
///   "created_by_name": "test_director",
///   "created_at": "2026-09-06T15:15:34+0300"
/// }
/// ```
///
/// Notes: direct `POST /material-transactions/` → 201 echo (works — the
/// usable stock-change path while `add_stock`/`subtract_stock` 500).
/// `transaction_type`: `income`/`outcome`/`adjustment`. Deleting a
/// transaction does NOT reverse `current_stock` (verified).
@freezed
abstract class MaterialTransactionModel with _$MaterialTransactionModel {
  const factory MaterialTransactionModel({
    required int id,
    required int material,
    required String? material_name,
    required String transaction_type,
    required String? transaction_type_display,
    required String quantity,
    required String? note,
    required int? created_by,
    required String? created_by_name,
    required String? created_at,
  }) = _MaterialTransactionModel;

  factory MaterialTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialTransactionModelFromJson(json);
}
