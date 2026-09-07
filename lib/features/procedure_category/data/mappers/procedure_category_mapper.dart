import '../models/procedure_category_model.dart';
import '../../domain/entities/procedure_category_entity.dart';

extension ProcedureCategoryMapper on ProcedureCategoryModel {
  ProcedureCategoryEntity toDomain() => ProcedureCategoryEntity(
    id: id,
    name: name,
    slug: slug,
    parentId: parent,
    description: description,
    procedureCount: procedure_count,
    children: children,
    isActive: is_active,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension ProcedureCategoryListMapper on List<ProcedureCategoryModel> {
  List<ProcedureCategoryEntity> toDomain() =>
      map((e) => e.toDomain()).toList();
}
