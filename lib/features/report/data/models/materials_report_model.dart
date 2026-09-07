// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_period_model.dart';

part 'materials_report_model.freezed.dart';
part 'materials_report_model.g.dart';

/// Materials drill-down report — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/reports/materials/` (director, 200;
/// admin/doctor → 403):
///
/// ```json
/// {
///   "period": {"start_date": "2026-08-08T01:53:05.431181+00:00",
///     "end_date": "2026-09-07T01:53:05.431181+00:00", "days": 30},
///   "total_materials_used": 0, "total_quantity": 0, "unique_materials": 0,
///   "top_materials": [], "by_doctor": [], "material_details": []
/// }
/// ```
///
/// Note: all three nested breakdowns are empty on the server — item shapes
/// unknown, kept as raw maps, never invented.
@freezed
abstract class MaterialsReportModel with _$MaterialsReportModel {
  const factory MaterialsReportModel({
    required ReportPeriodModel period,
    required int total_materials_used,
    required int total_quantity,
    required int unique_materials,
    required List<Map<String, dynamic>>? top_materials,
    required List<Map<String, dynamic>>? by_doctor,
    required List<Map<String, dynamic>>? material_details,
  }) = _MaterialsReportModel;

  factory MaterialsReportModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialsReportModelFromJson(json);
}
