import 'package:nexo/nexo_core.dart';

import '../entities/procedure_category_entity.dart';
import '../parameters/procedure_category_params.dart';

/// Category repository contract.
abstract interface class IProcedureCategoryRepository {
  Future<PageChunk<ProcedureCategoryEntity, int>> getCategories({
    required int page,
  });
  Future<ProcedureCategoryEntity> getCategoryById(int id);
  Future<ProcedureCategoryEntity> createCategory(
    CreateProcedureCategoryParams params,
  );
  Future<ProcedureCategoryEntity> updateCategory(
    UpdateProcedureCategoryParams params,
  );
  Future<void> deleteCategory(int id);
}
