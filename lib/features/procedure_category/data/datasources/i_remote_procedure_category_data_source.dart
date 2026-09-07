import 'package:nexo/nexo_core.dart';

import '../models/procedure_category_model.dart';

/// Procedure-category API (base `.../api/v1/`).
///
/// Live-verified (director writes; doctor+director reads; probes cleaned):
/// - `GET procedure-categories/` PAGED (admin → 403).
/// - `POST` → 201 full object; `PATCH` → echo semantics assumed
///   (repository re-fetches); `DELETE` → 204.
abstract interface class IRemoteProcedureCategoryDataSource {
  Future<PageChunk<ProcedureCategoryModel, int>> getCategories({
    required int page,
  });
  Future<ProcedureCategoryModel> getCategoryById(int id);
  Future<Map<String, dynamic>> createCategory(Map<String, dynamic> body);
  Future<void> updateCategory(int id, Map<String, dynamic> body);
  Future<void> deleteCategory(int id);
}
