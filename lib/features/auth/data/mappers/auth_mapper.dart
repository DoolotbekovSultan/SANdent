import '../models/auth_model.dart';
import '../../domain/entities/auth_entity.dart';

extension AuthMapper on AuthModel {
  AuthEntity toDomain() => AuthEntity(access: access, refresh: refresh);
}

extension AuthListMapper on List<AuthModel> {
  List<AuthEntity> toDomain() => map((e) => e.toDomain()).toList();
}
