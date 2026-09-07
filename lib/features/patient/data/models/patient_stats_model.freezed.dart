// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientStatsModel {

 int get total_appointments; int get completed; int get cancelled; int get no_show; String? get last_visit; String? get first_visit; num? get avg_gap_days;
/// Create a copy of PatientStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientStatsModelCopyWith<PatientStatsModel> get copyWith => _$PatientStatsModelCopyWithImpl<PatientStatsModel>(this as PatientStatsModel, _$identity);

  /// Serializes this PatientStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientStatsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientStatsModel&&(identical(other.total_appointments, _this.total_appointments) || other.total_appointments == _this.total_appointments)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.no_show, _this.no_show) || other.no_show == _this.no_show)&&(identical(other.last_visit, _this.last_visit) || other.last_visit == _this.last_visit)&&(identical(other.first_visit, _this.first_visit) || other.first_visit == _this.first_visit)&&(identical(other.avg_gap_days, _this.avg_gap_days) || other.avg_gap_days == _this.avg_gap_days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientStatsModel;
  return Object.hash(runtimeType,_this.total_appointments,_this.completed,_this.cancelled,_this.no_show,_this.last_visit,_this.first_visit,_this.avg_gap_days);
}

@override
String toString() {
  final _this = this as PatientStatsModel;
  return 'PatientStatsModel(total_appointments: ${_this.total_appointments}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, no_show: ${_this.no_show}, last_visit: ${_this.last_visit}, first_visit: ${_this.first_visit}, avg_gap_days: ${_this.avg_gap_days})';
}


}

/// @nodoc
abstract mixin class $PatientStatsModelCopyWith<$Res>  {
  factory $PatientStatsModelCopyWith(PatientStatsModel value, $Res Function(PatientStatsModel) _then) = _$PatientStatsModelCopyWithImpl;
@useResult
$Res call({
 int total_appointments, int completed, int cancelled, int no_show, String? last_visit, String? first_visit, num? avg_gap_days
});




}
/// @nodoc
class _$PatientStatsModelCopyWithImpl<$Res>
    implements $PatientStatsModelCopyWith<$Res> {
  _$PatientStatsModelCopyWithImpl(this._self, this._then);

  final PatientStatsModel _self;
  final $Res Function(PatientStatsModel) _then;

/// Create a copy of PatientStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total_appointments = null,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? last_visit = freezed,Object? first_visit = freezed,Object? avg_gap_days = freezed,}) {
  return _then(PatientStatsModel(
total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,last_visit: freezed == last_visit ? _self.last_visit : last_visit // ignore: cast_nullable_to_non_nullable
as String?,first_visit: freezed == first_visit ? _self.first_visit : first_visit // ignore: cast_nullable_to_non_nullable
as String?,avg_gap_days: freezed == avg_gap_days ? _self.avg_gap_days : avg_gap_days // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientStatsModel].
extension PatientStatsModelPatterns on PatientStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total_appointments,  int completed,  int cancelled,  int no_show,  String? last_visit,  String? first_visit,  num? avg_gap_days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientStatsModel() when $default != null:
return $default(_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.last_visit,_that.first_visit,_that.avg_gap_days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total_appointments,  int completed,  int cancelled,  int no_show,  String? last_visit,  String? first_visit,  num? avg_gap_days)  $default,) {final _that = this;
switch (_that) {
case _PatientStatsModel():
return $default(_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.last_visit,_that.first_visit,_that.avg_gap_days);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total_appointments,  int completed,  int cancelled,  int no_show,  String? last_visit,  String? first_visit,  num? avg_gap_days)?  $default,) {final _that = this;
switch (_that) {
case _PatientStatsModel() when $default != null:
return $default(_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.last_visit,_that.first_visit,_that.avg_gap_days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientStatsModel implements PatientStatsModel {
  const _PatientStatsModel({required this.total_appointments, required this.completed, required this.cancelled, required this.no_show, required this.last_visit, required this.first_visit, required this.avg_gap_days});
  factory _PatientStatsModel.fromJson(Map<String, dynamic> json) => _$PatientStatsModelFromJson(json);

@override final  int total_appointments;
@override final  int completed;
@override final  int cancelled;
@override final  int no_show;
@override final  String? last_visit;
@override final  String? first_visit;
@override final  num? avg_gap_days;

/// Create a copy of PatientStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientStatsModelCopyWith<_PatientStatsModel> get copyWith => __$PatientStatsModelCopyWithImpl<_PatientStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientStatsModel&&(identical(other.total_appointments, total_appointments) || other.total_appointments == total_appointments)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.no_show, no_show) || other.no_show == no_show)&&(identical(other.last_visit, last_visit) || other.last_visit == last_visit)&&(identical(other.first_visit, first_visit) || other.first_visit == first_visit)&&(identical(other.avg_gap_days, avg_gap_days) || other.avg_gap_days == avg_gap_days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total_appointments,completed,cancelled,no_show,last_visit,first_visit,avg_gap_days);
}

@override
String toString() {
    return 'PatientStatsModel(total_appointments: $total_appointments, completed: $completed, cancelled: $cancelled, no_show: $no_show, last_visit: $last_visit, first_visit: $first_visit, avg_gap_days: $avg_gap_days)';
}


}

/// @nodoc
abstract mixin class _$PatientStatsModelCopyWith<$Res> implements $PatientStatsModelCopyWith<$Res> {
  factory _$PatientStatsModelCopyWith(_PatientStatsModel value, $Res Function(_PatientStatsModel) _then) = __$PatientStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int total_appointments, int completed, int cancelled, int no_show, String? last_visit, String? first_visit, num? avg_gap_days
});




}
/// @nodoc
class __$PatientStatsModelCopyWithImpl<$Res>
    implements _$PatientStatsModelCopyWith<$Res> {
  __$PatientStatsModelCopyWithImpl(this._self, this._then);

  final _PatientStatsModel _self;
  final $Res Function(_PatientStatsModel) _then;

/// Create a copy of PatientStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total_appointments = null,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? last_visit = freezed,Object? first_visit = freezed,Object? avg_gap_days = freezed,}) {
  return _then(_PatientStatsModel(
total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,last_visit: freezed == last_visit ? _self.last_visit : last_visit // ignore: cast_nullable_to_non_nullable
as String?,first_visit: freezed == first_visit ? _self.first_visit : first_visit // ignore: cast_nullable_to_non_nullable
as String?,avg_gap_days: freezed == avg_gap_days ? _self.avg_gap_days : avg_gap_days // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
