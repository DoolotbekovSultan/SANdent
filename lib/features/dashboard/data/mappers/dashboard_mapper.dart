import '../models/dashboard_model.dart';
import '../../domain/entities/dashboard_entity.dart';

extension DashboardMapper on DashboardModel {
  DashboardEntity toDomain() => DashboardEntity(
    todayDate: today.date,
    todayAppointments: today.appointments,
    todayCompleted: today.appointments_completed,
    todayNewPatients: today.new_patients,
    todayRevenue: today.revenue,
    todayActiveDoctors: today.active_doctors,
    totalPatients: total.patients,
    totalDoctors: total.doctors,
    totalNeedRestock: total.materials_need_restock,
    totalUnread: total.unread_notifications,
  );
}
