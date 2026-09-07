import '../models/material_model.dart';
import '../../domain/entities/material_entity.dart';

extension MaterialMapper on MaterialModel {
  MaterialEntity toDomain() => MaterialEntity(
    id: id,
    name: name,
    unit: unit,
    description: description,
    isActive: is_active,
    usageCount: usage_count,
    totalUsed: total_used,
    currentStock: current_stock,
    minStock: min_stock,
    needsRestock: needs_restock,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension MaterialListMapper on List<MaterialModel> {
  List<MaterialEntity> toDomain() => map((e) => e.toDomain()).toList();
}
