// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(
  Map<String, dynamic> json,
) => _DashboardModel(
  today: DashboardTodayModel.fromJson(json['today'] as Map<String, dynamic>),
  week: DashboardWeekModel.fromJson(json['week'] as Map<String, dynamic>),
  month: DashboardMonthModel.fromJson(json['month'] as Map<String, dynamic>),
  total: DashboardTotalModel.fromJson(json['total'] as Map<String, dynamic>),
  recent_appointments: (json['recent_appointments'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  recent_patients: (json['recent_patients'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'today': instance.today,
      'week': instance.week,
      'month': instance.month,
      'total': instance.total,
      'recent_appointments': instance.recent_appointments,
      'recent_patients': instance.recent_patients,
    };

_DashboardTodayModel _$DashboardTodayModelFromJson(Map<String, dynamic> json) =>
    _DashboardTodayModel(
      date: json['date'] as String?,
      appointments: (json['appointments'] as num).toInt(),
      appointments_completed: (json['appointments_completed'] as num).toInt(),
      new_patients: (json['new_patients'] as num).toInt(),
      revenue: json['revenue'] as num,
      active_doctors: (json['active_doctors'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardTodayModelToJson(
  _DashboardTodayModel instance,
) => <String, dynamic>{
  'date': instance.date,
  'appointments': instance.appointments,
  'appointments_completed': instance.appointments_completed,
  'new_patients': instance.new_patients,
  'revenue': instance.revenue,
  'active_doctors': instance.active_doctors,
};

_DashboardWeekModel _$DashboardWeekModelFromJson(Map<String, dynamic> json) =>
    _DashboardWeekModel(
      start_date: json['start_date'] as String?,
      appointments: (json['appointments'] as num).toInt(),
      appointments_completed: (json['appointments_completed'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardWeekModelToJson(_DashboardWeekModel instance) =>
    <String, dynamic>{
      'start_date': instance.start_date,
      'appointments': instance.appointments,
      'appointments_completed': instance.appointments_completed,
    };

_DashboardMonthModel _$DashboardMonthModelFromJson(Map<String, dynamic> json) =>
    _DashboardMonthModel(
      start_date: json['start_date'] as String?,
      new_patients: (json['new_patients'] as num).toInt(),
      revenue: json['revenue'] as num,
    );

Map<String, dynamic> _$DashboardMonthModelToJson(
  _DashboardMonthModel instance,
) => <String, dynamic>{
  'start_date': instance.start_date,
  'new_patients': instance.new_patients,
  'revenue': instance.revenue,
};

_DashboardTotalModel _$DashboardTotalModelFromJson(Map<String, dynamic> json) =>
    _DashboardTotalModel(
      patients: (json['patients'] as num).toInt(),
      doctors: (json['doctors'] as num).toInt(),
      materials_need_restock: (json['materials_need_restock'] as num).toInt(),
      unread_notifications: (json['unread_notifications'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardTotalModelToJson(
  _DashboardTotalModel instance,
) => <String, dynamic>{
  'patients': instance.patients,
  'doctors': instance.doctors,
  'materials_need_restock': instance.materials_need_restock,
  'unread_notifications': instance.unread_notifications,
};
