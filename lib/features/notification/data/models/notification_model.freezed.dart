// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

 int get id; int? get user; UserModel? get user_detail; String get message; String? get notification_type; String? get type_display; bool? get is_read; Map<String, dynamic>? get data; String? get created_at;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.user_detail, _this.user_detail) || other.user_detail == _this.user_detail)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.notification_type, _this.notification_type) || other.notification_type == _this.notification_type)&&(identical(other.type_display, _this.type_display) || other.type_display == _this.type_display)&&(identical(other.is_read, _this.is_read) || other.is_read == _this.is_read)&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationModel;
  return Object.hash(runtimeType,_this.id,_this.user,_this.user_detail,_this.message,_this.notification_type,_this.type_display,_this.is_read,const DeepCollectionEquality().hash(_this.data),_this.created_at);
}

@override
String toString() {
  final _this = this as NotificationModel;
  return 'NotificationModel(id: ${_this.id}, user: ${_this.user}, user_detail: ${_this.user_detail}, message: ${_this.message}, notification_type: ${_this.notification_type}, type_display: ${_this.type_display}, is_read: ${_this.is_read}, data: ${_this.data}, created_at: ${_this.created_at})';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 int id, int? user, UserModel? user_detail, String message, String? notification_type, String? type_display, bool? is_read, Map<String, dynamic>? data, String? created_at
});


$UserModelCopyWith<$Res>? get user_detail;

}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = freezed,Object? user_detail = freezed,Object? message = null,Object? notification_type = freezed,Object? type_display = freezed,Object? is_read = freezed,Object? data = freezed,Object? created_at = freezed,}) {
  return _then(NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,user_detail: freezed == user_detail ? _self.user_detail : user_detail // ignore: cast_nullable_to_non_nullable
as UserModel?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,notification_type: freezed == notification_type ? _self.notification_type : notification_type // ignore: cast_nullable_to_non_nullable
as String?,type_display: freezed == type_display ? _self.type_display : type_display // ignore: cast_nullable_to_non_nullable
as String?,is_read: freezed == is_read ? _self.is_read : is_read // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user_detail {
    if (_self.user_detail == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user_detail!, (value) {
    return _then(_self.copyWith(user_detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? user,  UserModel? user_detail,  String message,  String? notification_type,  String? type_display,  bool? is_read,  Map<String, dynamic>? data,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.user,_that.user_detail,_that.message,_that.notification_type,_that.type_display,_that.is_read,_that.data,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? user,  UserModel? user_detail,  String message,  String? notification_type,  String? type_display,  bool? is_read,  Map<String, dynamic>? data,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.id,_that.user,_that.user_detail,_that.message,_that.notification_type,_that.type_display,_that.is_read,_that.data,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? user,  UserModel? user_detail,  String message,  String? notification_type,  String? type_display,  bool? is_read,  Map<String, dynamic>? data,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.user,_that.user_detail,_that.message,_that.notification_type,_that.type_display,_that.is_read,_that.data,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel implements NotificationModel {
  const _NotificationModel({required this.id, required this.user, required this.user_detail, required this.message, required this.notification_type, required this.type_display, required this.is_read, required  Map<String, dynamic>? data, required this.created_at}): _data = data;
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override final  int id;
@override final  int? user;
@override final  UserModel? user_detail;
@override final  String message;
@override final  String? notification_type;
@override final  String? type_display;
@override final  bool? is_read;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? created_at;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.user_detail, user_detail) || other.user_detail == user_detail)&&(identical(other.message, message) || other.message == message)&&(identical(other.notification_type, notification_type) || other.notification_type == notification_type)&&(identical(other.type_display, type_display) || other.type_display == type_display)&&(identical(other.is_read, is_read) || other.is_read == is_read)&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,user,user_detail,message,notification_type,type_display,is_read,const DeepCollectionEquality().hash(_data),created_at);
}

@override
String toString() {
    return 'NotificationModel(id: $id, user: $user, user_detail: $user_detail, message: $message, notification_type: $notification_type, type_display: $type_display, is_read: $is_read, data: $data, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int? user, UserModel? user_detail, String message, String? notification_type, String? type_display, bool? is_read, Map<String, dynamic>? data, String? created_at
});


@override $UserModelCopyWith<$Res>? get user_detail;

}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = freezed,Object? user_detail = freezed,Object? message = null,Object? notification_type = freezed,Object? type_display = freezed,Object? is_read = freezed,Object? data = freezed,Object? created_at = freezed,}) {
  return _then(_NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,user_detail: freezed == user_detail ? _self.user_detail : user_detail // ignore: cast_nullable_to_non_nullable
as UserModel?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,notification_type: freezed == notification_type ? _self.notification_type : notification_type // ignore: cast_nullable_to_non_nullable
as String?,type_display: freezed == type_display ? _self.type_display : type_display // ignore: cast_nullable_to_non_nullable
as String?,is_read: freezed == is_read ? _self.is_read : is_read // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user_detail {
    if (_self.user_detail == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user_detail!, (value) {
    return _then(_self.copyWith(user_detail: value));
  });
}
}

// dart format on
