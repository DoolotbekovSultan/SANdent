// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_category_model.freezed.dart';
part 'procedure_category_model.g.dart';

/// Procedure category DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `POST /api/v1/procedure-categories/` (201):
///
/// ```json
/// {
///   "id": 1,
///   "name": "Пробная категория",
///   "slug": "",
///   "parent": null,
///   "description": "",
///   "procedure_count": 0,
///   "children": [],
///   "is_active": true,
///   "created_at": "2026-09-06T14:53:04+0300",
///   "updated_at": "2026-09-06T14:53:04+0300"
/// }
/// ```
///
/// `children` is a real ARRAY (swagger wrongly claims `string`).
/// `slug` is empty unless set — treat `""` as absent.
@freezed
abstract class ProcedureCategoryModel with _$ProcedureCategoryModel {
  const factory ProcedureCategoryModel({
    required int id,
    required String name,
    required String? slug,
    required int? parent,
    required String? description,
    required int? procedure_count,
    required List<Map<String, dynamic>>? children,
    required bool? is_active,
    required String? created_at,
    required String? updated_at,
  }) = _ProcedureCategoryModel;

  factory ProcedureCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProcedureCategoryModelFromJson(json);
}
