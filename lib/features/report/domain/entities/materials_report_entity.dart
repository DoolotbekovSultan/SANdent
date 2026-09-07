import 'package:freezed_annotation/freezed_annotation.dart';

part 'materials_report_entity.freezed.dart';

/// Materials drill-down report (domain).
@freezed
abstract class MaterialsReportEntity with _$MaterialsReportEntity {
  const factory MaterialsReportEntity({
    required String? startDate,
    required String? endDate,
    required int days,
    required int totalMaterialsUsed,
    required int totalQuantity,
    required int uniqueMaterials,
    required List<Map<String, dynamic>> topMaterials,
    required List<Map<String, dynamic>> byDoctor,
    required List<Map<String, dynamic>> materialDetails,
  }) = _MaterialsReportEntity;
}
