import '../models/bulk_create_result_model.dart';
import '../models/procedure_model.dart';
import '../models/procedure_stats_model.dart';
import '../../domain/entities/bulk_create_result_entity.dart';
import '../../domain/entities/procedure_entity.dart';
import '../../domain/entities/procedure_stats_entity.dart';

extension ProcedureMapper on ProcedureModel {
  ProcedureEntity toDomain() => ProcedureEntity(
    id: id,
    name: name,
    code: code,
    categoryId: category,
    categoryName: category_name,
    description: description,
    price: price,
    durationMinutes: duration_minutes,
    isActive: is_active,
    usageCount: usage_count,
    totalRevenue: total_revenue,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension ProcedureListMapper on List<ProcedureModel> {
  List<ProcedureEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension BulkCreateResultMapper on BulkCreateResultModel {
  BulkCreateResultEntity toDomain() => BulkCreateResultEntity(
    created: created.toDomain(),
    total: total,
    successCount: success_count,
    errorCount: error_count,
  );
}

extension ProcedureStatsMapper on ProcedureStatsModel {
  ProcedureStatsEntity toDomain() => ProcedureStatsEntity(
    usageCount: usage_count,
    totalRevenue: total_revenue,
    lastUsed: last_used,
  );
}
