// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 int get id; String get username; String? get email; String? get first_name; String? get last_name; String? get full_name; String? get role; String? get role_display; String? get phone; int? get clinic; Map<String, dynamic>? get clinic_detail; bool? get is_active; String? get fcm_token; String? get device_id; String? get last_login; String? get date_joined; String? get created_at; String? get updated_at;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.first_name, _this.first_name) || other.first_name == _this.first_name)&&(identical(other.last_name, _this.last_name) || other.last_name == _this.last_name)&&(identical(other.full_name, _this.full_name) || other.full_name == _this.full_name)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.role_display, _this.role_display) || other.role_display == _this.role_display)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.clinic, _this.clinic) || other.clinic == _this.clinic)&&const DeepCollectionEquality().equals(other.clinic_detail, _this.clinic_detail)&&(identical(other.is_active, _this.is_active) || other.is_active == _this.is_active)&&(identical(other.fcm_token, _this.fcm_token) || other.fcm_token == _this.fcm_token)&&(identical(other.device_id, _this.device_id) || other.device_id == _this.device_id)&&(identical(other.last_login, _this.last_login) || other.last_login == _this.last_login)&&(identical(other.date_joined, _this.date_joined) || other.date_joined == _this.date_joined)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserModel;
  return Object.hash(runtimeType,_this.id,_this.username,_this.email,_this.first_name,_this.last_name,_this.full_name,_this.role,_this.role_display,_this.phone,_this.clinic,const DeepCollectionEquality().hash(_this.clinic_detail),_this.is_active,_this.fcm_token,_this.device_id,_this.last_login,_this.date_joined,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as UserModel;
  return 'UserModel(id: ${_this.id}, username: ${_this.username}, email: ${_this.email}, first_name: ${_this.first_name}, last_name: ${_this.last_name}, full_name: ${_this.full_name}, role: ${_this.role}, role_display: ${_this.role_display}, phone: ${_this.phone}, clinic: ${_this.clinic}, clinic_detail: ${_this.clinic_detail}, is_active: ${_this.is_active}, fcm_token: ${_this.fcm_token}, device_id: ${_this.device_id}, last_login: ${_this.last_login}, date_joined: ${_this.date_joined}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int id, String username, String? email, String? first_name, String? last_name, String? full_name, String? role, String? role_display, String? phone, int? clinic, Map<String, dynamic>? clinic_detail, bool? is_active, String? fcm_token, String? device_id, String? last_login, String? date_joined, String? created_at, String? updated_at
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = freezed,Object? first_name = freezed,Object? last_name = freezed,Object? full_name = freezed,Object? role = freezed,Object? role_display = freezed,Object? phone = freezed,Object? clinic = freezed,Object? clinic_detail = freezed,Object? is_active = freezed,Object? fcm_token = freezed,Object? device_id = freezed,Object? last_login = freezed,Object? date_joined = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,first_name: freezed == first_name ? _self.first_name : first_name // ignore: cast_nullable_to_non_nullable
as String?,last_name: freezed == last_name ? _self.last_name : last_name // ignore: cast_nullable_to_non_nullable
as String?,full_name: freezed == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,role_display: freezed == role_display ? _self.role_display : role_display // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as int?,clinic_detail: freezed == clinic_detail ? _self.clinic_detail : clinic_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,fcm_token: freezed == fcm_token ? _self.fcm_token : fcm_token // ignore: cast_nullable_to_non_nullable
as String?,device_id: freezed == device_id ? _self.device_id : device_id // ignore: cast_nullable_to_non_nullable
as String?,last_login: freezed == last_login ? _self.last_login : last_login // ignore: cast_nullable_to_non_nullable
as String?,date_joined: freezed == date_joined ? _self.date_joined : date_joined // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  String? email,  String? first_name,  String? last_name,  String? full_name,  String? role,  String? role_display,  String? phone,  int? clinic,  Map<String, dynamic>? clinic_detail,  bool? is_active,  String? fcm_token,  String? device_id,  String? last_login,  String? date_joined,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.first_name,_that.last_name,_that.full_name,_that.role,_that.role_display,_that.phone,_that.clinic,_that.clinic_detail,_that.is_active,_that.fcm_token,_that.device_id,_that.last_login,_that.date_joined,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  String? email,  String? first_name,  String? last_name,  String? full_name,  String? role,  String? role_display,  String? phone,  int? clinic,  Map<String, dynamic>? clinic_detail,  bool? is_active,  String? fcm_token,  String? device_id,  String? last_login,  String? date_joined,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.username,_that.email,_that.first_name,_that.last_name,_that.full_name,_that.role,_that.role_display,_that.phone,_that.clinic,_that.clinic_detail,_that.is_active,_that.fcm_token,_that.device_id,_that.last_login,_that.date_joined,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  String? email,  String? first_name,  String? last_name,  String? full_name,  String? role,  String? role_display,  String? phone,  int? clinic,  Map<String, dynamic>? clinic_detail,  bool? is_active,  String? fcm_token,  String? device_id,  String? last_login,  String? date_joined,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.first_name,_that.last_name,_that.full_name,_that.role,_that.role_display,_that.phone,_that.clinic,_that.clinic_detail,_that.is_active,_that.fcm_token,_that.device_id,_that.last_login,_that.date_joined,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.username, required this.email, required this.first_name, required this.last_name, required this.full_name, required this.role, required this.role_display, required this.phone, required this.clinic, required  Map<String, dynamic>? clinic_detail, required this.is_active, required this.fcm_token, required this.device_id, required this.last_login, required this.date_joined, required this.created_at, required this.updated_at}): _clinic_detail = clinic_detail;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  int id;
@override final  String username;
@override final  String? email;
@override final  String? first_name;
@override final  String? last_name;
@override final  String? full_name;
@override final  String? role;
@override final  String? role_display;
@override final  String? phone;
@override final  int? clinic;
 final  Map<String, dynamic>? _clinic_detail;
@override Map<String, dynamic>? get clinic_detail {
  final value = _clinic_detail;
  if (value == null) return null;
  if (_clinic_detail is EqualUnmodifiableMapView) return _clinic_detail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  bool? is_active;
@override final  String? fcm_token;
@override final  String? device_id;
@override final  String? last_login;
@override final  String? date_joined;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.first_name, first_name) || other.first_name == first_name)&&(identical(other.last_name, last_name) || other.last_name == last_name)&&(identical(other.full_name, full_name) || other.full_name == full_name)&&(identical(other.role, role) || other.role == role)&&(identical(other.role_display, role_display) || other.role_display == role_display)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.clinic, clinic) || other.clinic == clinic)&&const DeepCollectionEquality().equals(other.clinic_detail, _clinic_detail)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.fcm_token, fcm_token) || other.fcm_token == fcm_token)&&(identical(other.device_id, device_id) || other.device_id == device_id)&&(identical(other.last_login, last_login) || other.last_login == last_login)&&(identical(other.date_joined, date_joined) || other.date_joined == date_joined)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,username,email,first_name,last_name,full_name,role,role_display,phone,clinic,const DeepCollectionEquality().hash(_clinic_detail),is_active,fcm_token,device_id,last_login,date_joined,created_at,updated_at);
}

@override
String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, first_name: $first_name, last_name: $last_name, full_name: $full_name, role: $role, role_display: $role_display, phone: $phone, clinic: $clinic, clinic_detail: $clinic_detail, is_active: $is_active, fcm_token: $fcm_token, device_id: $device_id, last_login: $last_login, date_joined: $date_joined, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, String? email, String? first_name, String? last_name, String? full_name, String? role, String? role_display, String? phone, int? clinic, Map<String, dynamic>? clinic_detail, bool? is_active, String? fcm_token, String? device_id, String? last_login, String? date_joined, String? created_at, String? updated_at
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = freezed,Object? first_name = freezed,Object? last_name = freezed,Object? full_name = freezed,Object? role = freezed,Object? role_display = freezed,Object? phone = freezed,Object? clinic = freezed,Object? clinic_detail = freezed,Object? is_active = freezed,Object? fcm_token = freezed,Object? device_id = freezed,Object? last_login = freezed,Object? date_joined = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,first_name: freezed == first_name ? _self.first_name : first_name // ignore: cast_nullable_to_non_nullable
as String?,last_name: freezed == last_name ? _self.last_name : last_name // ignore: cast_nullable_to_non_nullable
as String?,full_name: freezed == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,role_display: freezed == role_display ? _self.role_display : role_display // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as int?,clinic_detail: freezed == clinic_detail ? _self._clinic_detail : clinic_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,fcm_token: freezed == fcm_token ? _self.fcm_token : fcm_token // ignore: cast_nullable_to_non_nullable
as String?,device_id: freezed == device_id ? _self.device_id : device_id // ignore: cast_nullable_to_non_nullable
as String?,last_login: freezed == last_login ? _self.last_login : last_login // ignore: cast_nullable_to_non_nullable
as String?,date_joined: freezed == date_joined ? _self.date_joined : date_joined // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
