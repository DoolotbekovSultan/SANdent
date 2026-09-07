// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

/// Admin dashboard — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/reports/dashboard/` (director, 200):
///
/// ```json
/// {
///   "today": {"date": "2026-09-06", "appointments": 0,
///     "appointments_completed": 0, "new_patients": 0,
///     "revenue": 0.0, "active_doctors": 0},
///   "week": {"start_date": "2026-08-30", "appointments": 0,
///     "appointments_completed": 0},
///   "month": {"start_date": "2026-08-07", "new_patients": 0,
///     "revenue": 0.0},
///   "total": {"patients": 0, "doctors": 4,
///     "materials_need_restock": 0, "unread_notifications": 0},
///   "recent_appointments": [],
///   "recent_patients": []
/// }
/// ```
///
/// Notes: director-only (admin/doctor → 403); `recent_*` item shapes are
/// unknown (empty on server) — raw maps. Sibling reports (`financial`,
/// `doctors`, `patients`, `materials`, `appointments`) are 200 with rich
/// shapes (all-zeros on the empty backend); `/reports/procedures/` → 500
/// (backend bug). Drill-down report screens are out of F8 scope.
@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    required DashboardTodayModel today,
    required DashboardWeekModel week,
    required DashboardMonthModel month,
    required DashboardTotalModel total,
    required List<Map<String, dynamic>>? recent_appointments,
    required List<Map<String, dynamic>>? recent_patients,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

@freezed
abstract class DashboardTodayModel with _$DashboardTodayModel {
  const factory DashboardTodayModel({
    required String? date,
    required int appointments,
    required int appointments_completed,
    required int new_patients,
    required num revenue,
    required int active_doctors,
  }) = _DashboardTodayModel;

  factory DashboardTodayModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardTodayModelFromJson(json);
}

@freezed
abstract class DashboardWeekModel with _$DashboardWeekModel {
  const factory DashboardWeekModel({
    required String? start_date,
    required int appointments,
    required int appointments_completed,
  }) = _DashboardWeekModel;

  factory DashboardWeekModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardWeekModelFromJson(json);
}

@freezed
abstract class DashboardMonthModel with _$DashboardMonthModel {
  const factory DashboardMonthModel({
    required String? start_date,
    required int new_patients,
    required num revenue,
  }) = _DashboardMonthModel;

  factory DashboardMonthModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardMonthModelFromJson(json);
}

@freezed
abstract class DashboardTotalModel with _$DashboardTotalModel {
  const factory DashboardTotalModel({
    required int patients,
    required int doctors,
    required int materials_need_restock,
    required int unread_notifications,
  }) = _DashboardTotalModel;

  factory DashboardTotalModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardTotalModelFromJson(json);
}
