// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntity {

 int get id; String get username; String? get email; String? get firstName; String? get lastName; String? get fullName; String? get role; String? get roleDisplay; String? get phone; int? get clinicId; String? get clinicName; bool? get isActive; String? get lastLogin; String? get dateJoined; String? get createdAt; String? get updatedAt;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.roleDisplay, _this.roleDisplay) || other.roleDisplay == _this.roleDisplay)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.clinicId, _this.clinicId) || other.clinicId == _this.clinicId)&&(identical(other.clinicName, _this.clinicName) || other.clinicName == _this.clinicName)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.lastLogin, _this.lastLogin) || other.lastLogin == _this.lastLogin)&&(identical(other.dateJoined, _this.dateJoined) || other.dateJoined == _this.dateJoined)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as UserEntity;
  return Object.hash(runtimeType,_this.id,_this.username,_this.email,_this.firstName,_this.lastName,_this.fullName,_this.role,_this.roleDisplay,_this.phone,_this.clinicId,_this.clinicName,_this.isActive,_this.lastLogin,_this.dateJoined,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as UserEntity;
  return 'UserEntity(id: ${_this.id}, username: ${_this.username}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, fullName: ${_this.fullName}, role: ${_this.role}, roleDisplay: ${_this.roleDisplay}, phone: ${_this.phone}, clinicId: ${_this.clinicId}, clinicName: ${_this.clinicName}, isActive: ${_this.isActive}, lastLogin: ${_this.lastLogin}, dateJoined: ${_this.dateJoined}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String username, String? email, String? firstName, String? lastName, String? fullName, String? role, String? roleDisplay, String? phone, int? clinicId, String? clinicName, bool? isActive, String? lastLogin, String? dateJoined, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? role = freezed,Object? roleDisplay = freezed,Object? phone = freezed,Object? clinicId = freezed,Object? clinicName = freezed,Object? isActive = freezed,Object? lastLogin = freezed,Object? dateJoined = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(UserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,roleDisplay: freezed == roleDisplay ? _self.roleDisplay : roleDisplay // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,clinicId: freezed == clinicId ? _self.clinicId : clinicId // ignore: cast_nullable_to_non_nullable
as int?,clinicName: freezed == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,dateJoined: freezed == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  String? email,  String? firstName,  String? lastName,  String? fullName,  String? role,  String? roleDisplay,  String? phone,  int? clinicId,  String? clinicName,  bool? isActive,  String? lastLogin,  String? dateJoined,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.fullName,_that.role,_that.roleDisplay,_that.phone,_that.clinicId,_that.clinicName,_that.isActive,_that.lastLogin,_that.dateJoined,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  String? email,  String? firstName,  String? lastName,  String? fullName,  String? role,  String? roleDisplay,  String? phone,  int? clinicId,  String? clinicName,  bool? isActive,  String? lastLogin,  String? dateJoined,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.fullName,_that.role,_that.roleDisplay,_that.phone,_that.clinicId,_that.clinicName,_that.isActive,_that.lastLogin,_that.dateJoined,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  String? email,  String? firstName,  String? lastName,  String? fullName,  String? role,  String? roleDisplay,  String? phone,  int? clinicId,  String? clinicName,  bool? isActive,  String? lastLogin,  String? dateJoined,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.fullName,_that.role,_that.roleDisplay,_that.phone,_that.clinicId,_that.clinicName,_that.isActive,_that.lastLogin,_that.dateJoined,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity extends UserEntity {
  const _UserEntity({required this.id, required this.username, required this.email, required this.firstName, required this.lastName, required this.fullName, required this.role, required this.roleDisplay, required this.phone, required this.clinicId, required this.clinicName, required this.isActive, required this.lastLogin, required this.dateJoined, required this.createdAt, required this.updatedAt}): super._();
  

@override final  int id;
@override final  String username;
@override final  String? email;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? fullName;
@override final  String? role;
@override final  String? roleDisplay;
@override final  String? phone;
@override final  int? clinicId;
@override final  String? clinicName;
@override final  bool? isActive;
@override final  String? lastLogin;
@override final  String? dateJoined;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.role, role) || other.role == role)&&(identical(other.roleDisplay, roleDisplay) || other.roleDisplay == roleDisplay)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.clinicId, clinicId) || other.clinicId == clinicId)&&(identical(other.clinicName, clinicName) || other.clinicName == clinicName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,username,email,firstName,lastName,fullName,role,roleDisplay,phone,clinicId,clinicName,isActive,lastLogin,dateJoined,createdAt,updatedAt);
}

@override
String toString() {
    return 'UserEntity(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, fullName: $fullName, role: $role, roleDisplay: $roleDisplay, phone: $phone, clinicId: $clinicId, clinicName: $clinicName, isActive: $isActive, lastLogin: $lastLogin, dateJoined: $dateJoined, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, String? email, String? firstName, String? lastName, String? fullName, String? role, String? roleDisplay, String? phone, int? clinicId, String? clinicName, bool? isActive, String? lastLogin, String? dateJoined, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? role = freezed,Object? roleDisplay = freezed,Object? phone = freezed,Object? clinicId = freezed,Object? clinicName = freezed,Object? isActive = freezed,Object? lastLogin = freezed,Object? dateJoined = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,roleDisplay: freezed == roleDisplay ? _self.roleDisplay : roleDisplay // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,clinicId: freezed == clinicId ? _self.clinicId : clinicId // ignore: cast_nullable_to_non_nullable
as int?,clinicName: freezed == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,dateJoined: freezed == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
