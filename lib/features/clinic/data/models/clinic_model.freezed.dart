// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClinicModel {

 int get id; String get name; String get address; String get phone; String? get email; bool? get is_active; String? get created_at; String? get updated_at;
/// Create a copy of ClinicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicModelCopyWith<ClinicModel> get copyWith => _$ClinicModelCopyWithImpl<ClinicModel>(this as ClinicModel, _$identity);

  /// Serializes this ClinicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClinicModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.is_active, _this.is_active) || other.is_active == _this.is_active)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClinicModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.address,_this.phone,_this.email,_this.is_active,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as ClinicModel;
  return 'ClinicModel(id: ${_this.id}, name: ${_this.name}, address: ${_this.address}, phone: ${_this.phone}, email: ${_this.email}, is_active: ${_this.is_active}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $ClinicModelCopyWith<$Res>  {
  factory $ClinicModelCopyWith(ClinicModel value, $Res Function(ClinicModel) _then) = _$ClinicModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String address, String phone, String? email, bool? is_active, String? created_at, String? updated_at
});




}
/// @nodoc
class _$ClinicModelCopyWithImpl<$Res>
    implements $ClinicModelCopyWith<$Res> {
  _$ClinicModelCopyWithImpl(this._self, this._then);

  final ClinicModel _self;
  final $Res Function(ClinicModel) _then;

/// Create a copy of ClinicModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? email = freezed,Object? is_active = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(ClinicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicModel].
extension ClinicModelPatterns on ClinicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicModel value)  $default,){
final _that = this;
switch (_that) {
case _ClinicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String address,  String phone,  String? email,  bool? is_active,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.is_active,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String address,  String phone,  String? email,  bool? is_active,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _ClinicModel():
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.is_active,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String address,  String phone,  String? email,  bool? is_active,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _ClinicModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.email,_that.is_active,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClinicModel implements ClinicModel {
  const _ClinicModel({required this.id, required this.name, required this.address, required this.phone, required this.email, required this.is_active, required this.created_at, required this.updated_at});
  factory _ClinicModel.fromJson(Map<String, dynamic> json) => _$ClinicModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String address;
@override final  String phone;
@override final  String? email;
@override final  bool? is_active;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of ClinicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicModelCopyWith<_ClinicModel> get copyWith => __$ClinicModelCopyWithImpl<_ClinicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClinicModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,address,phone,email,is_active,created_at,updated_at);
}

@override
String toString() {
    return 'ClinicModel(id: $id, name: $name, address: $address, phone: $phone, email: $email, is_active: $is_active, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$ClinicModelCopyWith<$Res> implements $ClinicModelCopyWith<$Res> {
  factory _$ClinicModelCopyWith(_ClinicModel value, $Res Function(_ClinicModel) _then) = __$ClinicModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String address, String phone, String? email, bool? is_active, String? created_at, String? updated_at
});




}
/// @nodoc
class __$ClinicModelCopyWithImpl<$Res>
    implements _$ClinicModelCopyWith<$Res> {
  __$ClinicModelCopyWithImpl(this._self, this._then);

  final _ClinicModel _self;
  final $Res Function(_ClinicModel) _then;

/// Create a copy of ClinicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? email = freezed,Object? is_active = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_ClinicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
