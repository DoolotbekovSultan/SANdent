// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_period_model.dart';

part 'financial_report_model.freezed.dart';
part 'financial_report_model.g.dart';

/// Financial drill-down report — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/reports/financial/` (director, 200;
/// admin/doctor → 403):
///
/// ```json
/// {
///   "period": {"start_date": "2026-08-08T01:53:04.718967+00:00",
///     "end_date": "2026-09-07T01:53:04.718967+00:00", "days": 30},
///   "total_appointments": 0, "total_revenue": 0.0, "avg_check": 0.0,
///   "material_cost": 0, "profit": 0.0,
///   "revenue_by_procedure": [], "revenue_by_doctor": [],
///   "material_usage": [], "daily_revenue": []
/// }
/// ```
///
/// Notes: money fields are `num` (backend mixes `0`/`0.0`); the four nested
/// breakdowns are empty on the server, so their item shapes are unknown —
/// kept as raw maps, never invented.
@freezed
abstract class FinancialReportModel with _$FinancialReportModel {
  const factory FinancialReportModel({
    required ReportPeriodModel period,
    required int total_appointments,
    required num total_revenue,
    required num avg_check,
    required num material_cost,
    required num profit,
    required List<Map<String, dynamic>>? revenue_by_procedure,
    required List<Map<String, dynamic>>? revenue_by_doctor,
    required List<Map<String, dynamic>>? material_usage,
    required List<Map<String, dynamic>>? daily_revenue,
  }) = _FinancialReportModel;

  factory FinancialReportModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialReportModelFromJson(json);
}
