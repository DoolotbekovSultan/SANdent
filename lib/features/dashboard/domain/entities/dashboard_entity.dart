import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';

/// Admin dashboard (domain).
@freezed
abstract class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    required String? todayDate,
    required int todayAppointments,
    required int todayCompleted,
    required int todayNewPatients,
    required num todayRevenue,
    required int todayActiveDoctors,
    required int totalPatients,
    required int totalDoctors,
    required int totalNeedRestock,
    required int totalUnread,
  }) = _DashboardEntity;
}
