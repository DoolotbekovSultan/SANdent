// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClinicEntity {

 int get id; String get name; String get address; String get phone; String? get email; bool? get isActive; String? get createdAt; String? get updatedAt;
/// Create a copy of ClinicEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicEntityCopyWith<ClinicEntity> get copyWith => _$ClinicEntityCopyWithImpl<ClinicEntity>(this as ClinicEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClinicEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as ClinicEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.address,_this.phone,_this.email,_this.isActive,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as ClinicEntity;
  return 'ClinicEntity(id: ${_this.id}, name: ${_this.name}, address: ${_this.address}, phone: ${_this.phone}, email: ${_this.email}, isActive: ${_this.isActive}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $ClinicEntityCopyWith<$Res>  {
  factory $ClinicEntityCopyWith(ClinicEntity value, $Res Function(ClinicEntity) _then) = _$ClinicEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String address, String phone, String? email, bool? isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$ClinicEntityCopyWithImpl<$Res>
    implements $ClinicEntityCopyWith<$Res> {
  _$ClinicEntityCopyWithImpl(this._self, this._then);

  final ClinicEntity _self;
  final $Res Function(ClinicEntity) _then;

/// Create a copy of ClinicEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? email = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(ClinicEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicEntity].
extension ClinicEntityPatterns on ClinicEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClinicEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String address,  String phone,  String? email,  bool? isActive,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicEntity() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String address,  String phone,  String? email,  bool? isActive,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ClinicEntity():
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String address,  String phone,  String? email,  bool? isActive,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ClinicEntity() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ClinicEntity implements ClinicEntity {
  const _ClinicEntity({required this.id, required this.name, required this.address, required this.phone, required this.email, required this.isActive, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String name;
@override final  String address;
@override final  String phone;
@override final  String? email;
@override final  bool? isActive;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of ClinicEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicEntityCopyWith<_ClinicEntity> get copyWith => __$ClinicEntityCopyWithImpl<_ClinicEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,address,phone,email,isActive,createdAt,updatedAt);
}

@override
String toString() {
    return 'ClinicEntity(id: $id, name: $name, address: $address, phone: $phone, email: $email, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ClinicEntityCopyWith<$Res> implements $ClinicEntityCopyWith<$Res> {
  factory _$ClinicEntityCopyWith(_ClinicEntity value, $Res Function(_ClinicEntity) _then) = __$ClinicEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String address, String phone, String? email, bool? isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$ClinicEntityCopyWithImpl<$Res>
    implements _$ClinicEntityCopyWith<$Res> {
  __$ClinicEntityCopyWithImpl(this._self, this._then);

  final _ClinicEntity _self;
  final $Res Function(_ClinicEntity) _then;

/// Create a copy of ClinicEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? email = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ClinicEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
