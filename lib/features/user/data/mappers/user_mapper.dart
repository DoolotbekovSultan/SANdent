import '../models/stats_model.dart';
import '../models/user_model.dart';
import '../../domain/entities/stats_entity.dart';
import '../../domain/entities/user_entity.dart';

extension UserMapper on UserModel {
  UserEntity toDomain() => UserEntity(
    id: id,
    username: username,
    email: email,
    firstName: first_name,
    lastName: last_name,
    fullName: full_name,
    role: role,
    roleDisplay: role_display,
    phone: phone,
    clinicId: clinic,
    clinicName: clinic_detail?['name'] as String?,
    isActive: is_active,
    lastLogin: last_login,
    dateJoined: date_joined,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension UserListMapper on List<UserModel> {
  List<UserEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension ByRoleStatMapper on ByRoleStatModel {
  ByRoleStatEntity toDomain() =>
      ByRoleStatEntity(role: role, count: count);
}

extension StatsMapper on StatsModel {
  StatsEntity toDomain() => StatsEntity(
    total: total,
    byRole: by_role?.map((e) => e.toDomain()).toList() ?? const [],
    active: active,
    inactive: inactive,
    byClinic: by_clinic ?? const [],
    createdToday: created_today,
    createdThisWeek: created_this_week,
    createdThisMonth: created_this_month,
  );
}
