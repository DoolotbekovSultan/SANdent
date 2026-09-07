import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_report_entity.freezed.dart';

/// Financial drill-down report (domain).
@freezed
abstract class FinancialReportEntity with _$FinancialReportEntity {
  const factory FinancialReportEntity({
    required String? startDate,
    required String? endDate,
    required int days,
    required int totalAppointments,
    required num totalRevenue,
    required num avgCheck,
    required num materialCost,
    required num profit,
    required List<Map<String, dynamic>> revenueByProcedure,
    required List<Map<String, dynamic>> revenueByDoctor,
    required List<Map<String, dynamic>> materialUsage,
    required List<Map<String, dynamic>> dailyRevenue,
  }) = _FinancialReportEntity;
}
