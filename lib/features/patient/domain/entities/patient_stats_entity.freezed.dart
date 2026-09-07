// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientStatsEntity {

 int get totalAppointments; int get completed; int get cancelled; int get noShow; String? get lastVisit; String? get firstVisit; num? get avgGapDays;
/// Create a copy of PatientStatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientStatsEntityCopyWith<PatientStatsEntity> get copyWith => _$PatientStatsEntityCopyWithImpl<PatientStatsEntity>(this as PatientStatsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientStatsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientStatsEntity&&(identical(other.totalAppointments, _this.totalAppointments) || other.totalAppointments == _this.totalAppointments)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.noShow, _this.noShow) || other.noShow == _this.noShow)&&(identical(other.lastVisit, _this.lastVisit) || other.lastVisit == _this.lastVisit)&&(identical(other.firstVisit, _this.firstVisit) || other.firstVisit == _this.firstVisit)&&(identical(other.avgGapDays, _this.avgGapDays) || other.avgGapDays == _this.avgGapDays));
}


@override
int get hashCode {
  final _this = this as PatientStatsEntity;
  return Object.hash(runtimeType,_this.totalAppointments,_this.completed,_this.cancelled,_this.noShow,_this.lastVisit,_this.firstVisit,_this.avgGapDays);
}

@override
String toString() {
  final _this = this as PatientStatsEntity;
  return 'PatientStatsEntity(totalAppointments: ${_this.totalAppointments}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, noShow: ${_this.noShow}, lastVisit: ${_this.lastVisit}, firstVisit: ${_this.firstVisit}, avgGapDays: ${_this.avgGapDays})';
}


}

/// @nodoc
abstract mixin class $PatientStatsEntityCopyWith<$Res>  {
  factory $PatientStatsEntityCopyWith(PatientStatsEntity value, $Res Function(PatientStatsEntity) _then) = _$PatientStatsEntityCopyWithImpl;
@useResult
$Res call({
 int totalAppointments, int completed, int cancelled, int noShow, String? lastVisit, String? firstVisit, num? avgGapDays
});




}
/// @nodoc
class _$PatientStatsEntityCopyWithImpl<$Res>
    implements $PatientStatsEntityCopyWith<$Res> {
  _$PatientStatsEntityCopyWithImpl(this._self, this._then);

  final PatientStatsEntity _self;
  final $Res Function(PatientStatsEntity) _then;

/// Create a copy of PatientStatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAppointments = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? lastVisit = freezed,Object? firstVisit = freezed,Object? avgGapDays = freezed,}) {
  return _then(PatientStatsEntity(
totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as String?,firstVisit: freezed == firstVisit ? _self.firstVisit : firstVisit // ignore: cast_nullable_to_non_nullable
as String?,avgGapDays: freezed == avgGapDays ? _self.avgGapDays : avgGapDays // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientStatsEntity].
extension PatientStatsEntityPatterns on PatientStatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientStatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientStatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientStatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientStatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientStatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientStatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalAppointments,  int completed,  int cancelled,  int noShow,  String? lastVisit,  String? firstVisit,  num? avgGapDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientStatsEntity() when $default != null:
return $default(_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.lastVisit,_that.firstVisit,_that.avgGapDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalAppointments,  int completed,  int cancelled,  int noShow,  String? lastVisit,  String? firstVisit,  num? avgGapDays)  $default,) {final _that = this;
switch (_that) {
case _PatientStatsEntity():
return $default(_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.lastVisit,_that.firstVisit,_that.avgGapDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalAppointments,  int completed,  int cancelled,  int noShow,  String? lastVisit,  String? firstVisit,  num? avgGapDays)?  $default,) {final _that = this;
switch (_that) {
case _PatientStatsEntity() when $default != null:
return $default(_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.lastVisit,_that.firstVisit,_that.avgGapDays);case _:
  return null;

}
}

}

/// @nodoc


class _PatientStatsEntity implements PatientStatsEntity {
  const _PatientStatsEntity({required this.totalAppointments, required this.completed, required this.cancelled, required this.noShow, required this.lastVisit, required this.firstVisit, required this.avgGapDays});
  

@override final  int totalAppointments;
@override final  int completed;
@override final  int cancelled;
@override final  int noShow;
@override final  String? lastVisit;
@override final  String? firstVisit;
@override final  num? avgGapDays;

/// Create a copy of PatientStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientStatsEntityCopyWith<_PatientStatsEntity> get copyWith => __$PatientStatsEntityCopyWithImpl<_PatientStatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientStatsEntity&&(identical(other.totalAppointments, totalAppointments) || other.totalAppointments == totalAppointments)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.noShow, noShow) || other.noShow == noShow)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit)&&(identical(other.firstVisit, firstVisit) || other.firstVisit == firstVisit)&&(identical(other.avgGapDays, avgGapDays) || other.avgGapDays == avgGapDays));
}


@override
int get hashCode {
    return Object.hash(runtimeType,totalAppointments,completed,cancelled,noShow,lastVisit,firstVisit,avgGapDays);
}

@override
String toString() {
    return 'PatientStatsEntity(totalAppointments: $totalAppointments, completed: $completed, cancelled: $cancelled, noShow: $noShow, lastVisit: $lastVisit, firstVisit: $firstVisit, avgGapDays: $avgGapDays)';
}


}

/// @nodoc
abstract mixin class _$PatientStatsEntityCopyWith<$Res> implements $PatientStatsEntityCopyWith<$Res> {
  factory _$PatientStatsEntityCopyWith(_PatientStatsEntity value, $Res Function(_PatientStatsEntity) _then) = __$PatientStatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalAppointments, int completed, int cancelled, int noShow, String? lastVisit, String? firstVisit, num? avgGapDays
});




}
/// @nodoc
class __$PatientStatsEntityCopyWithImpl<$Res>
    implements _$PatientStatsEntityCopyWith<$Res> {
  __$PatientStatsEntityCopyWithImpl(this._self, this._then);

  final _PatientStatsEntity _self;
  final $Res Function(_PatientStatsEntity) _then;

/// Create a copy of PatientStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAppointments = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? lastVisit = freezed,Object? firstVisit = freezed,Object? avgGapDays = freezed,}) {
  return _then(_PatientStatsEntity(
totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as String?,firstVisit: freezed == firstVisit ? _self.firstVisit : firstVisit // ignore: cast_nullable_to_non_nullable
as String?,avgGapDays: freezed == avgGapDays ? _self.avgGapDays : avgGapDays // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
