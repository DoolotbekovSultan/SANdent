// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_period_model.freezed.dart';
part 'report_period_model.g.dart';

/// Shared `period` block of all drill-down reports — mirrors backend keys 1:1.
/// Live-verified (director, 200), identical shape in all 5 reports:
///
/// ```json
/// {"start_date": "2026-08-08T01:53:04.718967+00:00",
///  "end_date": "2026-09-07T01:53:04.718967+00:00", "days": 30}
/// ```
@freezed
abstract class ReportPeriodModel with _$ReportPeriodModel {
  const factory ReportPeriodModel({
    required String? start_date,
    required String? end_date,
    required int days,
  }) = _ReportPeriodModel;

  factory ReportPeriodModel.fromJson(Map<String, dynamic> json) =>
      _$ReportPeriodModelFromJson(json);
}
