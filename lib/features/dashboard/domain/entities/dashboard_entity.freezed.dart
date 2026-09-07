// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEntity {

 String? get todayDate; int get todayAppointments; int get todayCompleted; int get todayNewPatients; num get todayRevenue; int get todayActiveDoctors; int get totalPatients; int get totalDoctors; int get totalNeedRestock; int get totalUnread;
/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardEntityCopyWith<DashboardEntity> get copyWith => _$DashboardEntityCopyWithImpl<DashboardEntity>(this as DashboardEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DashboardEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEntity&&(identical(other.todayDate, _this.todayDate) || other.todayDate == _this.todayDate)&&(identical(other.todayAppointments, _this.todayAppointments) || other.todayAppointments == _this.todayAppointments)&&(identical(other.todayCompleted, _this.todayCompleted) || other.todayCompleted == _this.todayCompleted)&&(identical(other.todayNewPatients, _this.todayNewPatients) || other.todayNewPatients == _this.todayNewPatients)&&(identical(other.todayRevenue, _this.todayRevenue) || other.todayRevenue == _this.todayRevenue)&&(identical(other.todayActiveDoctors, _this.todayActiveDoctors) || other.todayActiveDoctors == _this.todayActiveDoctors)&&(identical(other.totalPatients, _this.totalPatients) || other.totalPatients == _this.totalPatients)&&(identical(other.totalDoctors, _this.totalDoctors) || other.totalDoctors == _this.totalDoctors)&&(identical(other.totalNeedRestock, _this.totalNeedRestock) || other.totalNeedRestock == _this.totalNeedRestock)&&(identical(other.totalUnread, _this.totalUnread) || other.totalUnread == _this.totalUnread));
}


@override
int get hashCode {
  final _this = this as DashboardEntity;
  return Object.hash(runtimeType,_this.todayDate,_this.todayAppointments,_this.todayCompleted,_this.todayNewPatients,_this.todayRevenue,_this.todayActiveDoctors,_this.totalPatients,_this.totalDoctors,_this.totalNeedRestock,_this.totalUnread);
}

@override
String toString() {
  final _this = this as DashboardEntity;
  return 'DashboardEntity(todayDate: ${_this.todayDate}, todayAppointments: ${_this.todayAppointments}, todayCompleted: ${_this.todayCompleted}, todayNewPatients: ${_this.todayNewPatients}, todayRevenue: ${_this.todayRevenue}, todayActiveDoctors: ${_this.todayActiveDoctors}, totalPatients: ${_this.totalPatients}, totalDoctors: ${_this.totalDoctors}, totalNeedRestock: ${_this.totalNeedRestock}, totalUnread: ${_this.totalUnread})';
}


}

/// @nodoc
abstract mixin class $DashboardEntityCopyWith<$Res>  {
  factory $DashboardEntityCopyWith(DashboardEntity value, $Res Function(DashboardEntity) _then) = _$DashboardEntityCopyWithImpl;
@useResult
$Res call({
 String? todayDate, int todayAppointments, int todayCompleted, int todayNewPatients, num todayRevenue, int todayActiveDoctors, int totalPatients, int totalDoctors, int totalNeedRestock, int totalUnread
});




}
/// @nodoc
class _$DashboardEntityCopyWithImpl<$Res>
    implements $DashboardEntityCopyWith<$Res> {
  _$DashboardEntityCopyWithImpl(this._self, this._then);

  final DashboardEntity _self;
  final $Res Function(DashboardEntity) _then;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todayDate = freezed,Object? todayAppointments = null,Object? todayCompleted = null,Object? todayNewPatients = null,Object? todayRevenue = null,Object? todayActiveDoctors = null,Object? totalPatients = null,Object? totalDoctors = null,Object? totalNeedRestock = null,Object? totalUnread = null,}) {
  return _then(DashboardEntity(
todayDate: freezed == todayDate ? _self.todayDate : todayDate // ignore: cast_nullable_to_non_nullable
as String?,todayAppointments: null == todayAppointments ? _self.todayAppointments : todayAppointments // ignore: cast_nullable_to_non_nullable
as int,todayCompleted: null == todayCompleted ? _self.todayCompleted : todayCompleted // ignore: cast_nullable_to_non_nullable
as int,todayNewPatients: null == todayNewPatients ? _self.todayNewPatients : todayNewPatients // ignore: cast_nullable_to_non_nullable
as int,todayRevenue: null == todayRevenue ? _self.todayRevenue : todayRevenue // ignore: cast_nullable_to_non_nullable
as num,todayActiveDoctors: null == todayActiveDoctors ? _self.todayActiveDoctors : todayActiveDoctors // ignore: cast_nullable_to_non_nullable
as int,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,totalDoctors: null == totalDoctors ? _self.totalDoctors : totalDoctors // ignore: cast_nullable_to_non_nullable
as int,totalNeedRestock: null == totalNeedRestock ? _self.totalNeedRestock : totalNeedRestock // ignore: cast_nullable_to_non_nullable
as int,totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardEntity].
extension DashboardEntityPatterns on DashboardEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardEntity value)  $default,){
final _that = this;
switch (_that) {
case _DashboardEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? todayDate,  int todayAppointments,  int todayCompleted,  int todayNewPatients,  num todayRevenue,  int todayActiveDoctors,  int totalPatients,  int totalDoctors,  int totalNeedRestock,  int totalUnread)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
return $default(_that.todayDate,_that.todayAppointments,_that.todayCompleted,_that.todayNewPatients,_that.todayRevenue,_that.todayActiveDoctors,_that.totalPatients,_that.totalDoctors,_that.totalNeedRestock,_that.totalUnread);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? todayDate,  int todayAppointments,  int todayCompleted,  int todayNewPatients,  num todayRevenue,  int todayActiveDoctors,  int totalPatients,  int totalDoctors,  int totalNeedRestock,  int totalUnread)  $default,) {final _that = this;
switch (_that) {
case _DashboardEntity():
return $default(_that.todayDate,_that.todayAppointments,_that.todayCompleted,_that.todayNewPatients,_that.todayRevenue,_that.todayActiveDoctors,_that.totalPatients,_that.totalDoctors,_that.totalNeedRestock,_that.totalUnread);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? todayDate,  int todayAppointments,  int todayCompleted,  int todayNewPatients,  num todayRevenue,  int todayActiveDoctors,  int totalPatients,  int totalDoctors,  int totalNeedRestock,  int totalUnread)?  $default,) {final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
return $default(_that.todayDate,_that.todayAppointments,_that.todayCompleted,_that.todayNewPatients,_that.todayRevenue,_that.todayActiveDoctors,_that.totalPatients,_that.totalDoctors,_that.totalNeedRestock,_that.totalUnread);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardEntity implements DashboardEntity {
  const _DashboardEntity({required this.todayDate, required this.todayAppointments, required this.todayCompleted, required this.todayNewPatients, required this.todayRevenue, required this.todayActiveDoctors, required this.totalPatients, required this.totalDoctors, required this.totalNeedRestock, required this.totalUnread});
  

@override final  String? todayDate;
@override final  int todayAppointments;
@override final  int todayCompleted;
@override final  int todayNewPatients;
@override final  num todayRevenue;
@override final  int todayActiveDoctors;
@override final  int totalPatients;
@override final  int totalDoctors;
@override final  int totalNeedRestock;
@override final  int totalUnread;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardEntityCopyWith<_DashboardEntity> get copyWith => __$DashboardEntityCopyWithImpl<_DashboardEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardEntity&&(identical(other.todayDate, todayDate) || other.todayDate == todayDate)&&(identical(other.todayAppointments, todayAppointments) || other.todayAppointments == todayAppointments)&&(identical(other.todayCompleted, todayCompleted) || other.todayCompleted == todayCompleted)&&(identical(other.todayNewPatients, todayNewPatients) || other.todayNewPatients == todayNewPatients)&&(identical(other.todayRevenue, todayRevenue) || other.todayRevenue == todayRevenue)&&(identical(other.todayActiveDoctors, todayActiveDoctors) || other.todayActiveDoctors == todayActiveDoctors)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.totalDoctors, totalDoctors) || other.totalDoctors == totalDoctors)&&(identical(other.totalNeedRestock, totalNeedRestock) || other.totalNeedRestock == totalNeedRestock)&&(identical(other.totalUnread, totalUnread) || other.totalUnread == totalUnread));
}


@override
int get hashCode {
    return Object.hash(runtimeType,todayDate,todayAppointments,todayCompleted,todayNewPatients,todayRevenue,todayActiveDoctors,totalPatients,totalDoctors,totalNeedRestock,totalUnread);
}

@override
String toString() {
    return 'DashboardEntity(todayDate: $todayDate, todayAppointments: $todayAppointments, todayCompleted: $todayCompleted, todayNewPatients: $todayNewPatients, todayRevenue: $todayRevenue, todayActiveDoctors: $todayActiveDoctors, totalPatients: $totalPatients, totalDoctors: $totalDoctors, totalNeedRestock: $totalNeedRestock, totalUnread: $totalUnread)';
}


}

/// @nodoc
abstract mixin class _$DashboardEntityCopyWith<$Res> implements $DashboardEntityCopyWith<$Res> {
  factory _$DashboardEntityCopyWith(_DashboardEntity value, $Res Function(_DashboardEntity) _then) = __$DashboardEntityCopyWithImpl;
@override @useResult
$Res call({
 String? todayDate, int todayAppointments, int todayCompleted, int todayNewPatients, num todayRevenue, int todayActiveDoctors, int totalPatients, int totalDoctors, int totalNeedRestock, int totalUnread
});




}
/// @nodoc
class __$DashboardEntityCopyWithImpl<$Res>
    implements _$DashboardEntityCopyWith<$Res> {
  __$DashboardEntityCopyWithImpl(this._self, this._then);

  final _DashboardEntity _self;
  final $Res Function(_DashboardEntity) _then;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todayDate = freezed,Object? todayAppointments = null,Object? todayCompleted = null,Object? todayNewPatients = null,Object? todayRevenue = null,Object? todayActiveDoctors = null,Object? totalPatients = null,Object? totalDoctors = null,Object? totalNeedRestock = null,Object? totalUnread = null,}) {
  return _then(_DashboardEntity(
todayDate: freezed == todayDate ? _self.todayDate : todayDate // ignore: cast_nullable_to_non_nullable
as String?,todayAppointments: null == todayAppointments ? _self.todayAppointments : todayAppointments // ignore: cast_nullable_to_non_nullable
as int,todayCompleted: null == todayCompleted ? _self.todayCompleted : todayCompleted // ignore: cast_nullable_to_non_nullable
as int,todayNewPatients: null == todayNewPatients ? _self.todayNewPatients : todayNewPatients // ignore: cast_nullable_to_non_nullable
as int,todayRevenue: null == todayRevenue ? _self.todayRevenue : todayRevenue // ignore: cast_nullable_to_non_nullable
as num,todayActiveDoctors: null == todayActiveDoctors ? _self.todayActiveDoctors : todayActiveDoctors // ignore: cast_nullable_to_non_nullable
as int,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,totalDoctors: null == totalDoctors ? _self.totalDoctors : totalDoctors // ignore: cast_nullable_to_non_nullable
as int,totalNeedRestock: null == totalNeedRestock ? _self.totalNeedRestock : totalNeedRestock // ignore: cast_nullable_to_non_nullable
as int,totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
