import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

/// Authenticated session tokens (domain). Mirrors [AuthModel]:
/// both tokens are always present (rotation ON — verified live).
@freezed
abstract class AuthEntity with _$AuthEntity {
  const factory AuthEntity({required String access, required String refresh}) =
      _AuthEntity;
}
