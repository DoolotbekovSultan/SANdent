// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentsReportModel {

 ReportPeriodModel get period; int get total; List<Map<String, dynamic>>? get by_status; List<Map<String, dynamic>>? get by_doctor; List<Map<String, dynamic>>? get by_day; List<Map<String, dynamic>>? get by_hour; int get completed; int get cancelled; int get no_show; int get scheduled; int get in_progress; num get completion_rate; num get cancellation_rate;
/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsReportModelCopyWith<AppointmentsReportModel> get copyWith => _$AppointmentsReportModelCopyWithImpl<AppointmentsReportModel>(this as AppointmentsReportModel, _$identity);

  /// Serializes this AppointmentsReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppointmentsReportModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsReportModel&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.by_status, _this.by_status)&&const DeepCollectionEquality().equals(other.by_doctor, _this.by_doctor)&&const DeepCollectionEquality().equals(other.by_day, _this.by_day)&&const DeepCollectionEquality().equals(other.by_hour, _this.by_hour)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.no_show, _this.no_show) || other.no_show == _this.no_show)&&(identical(other.scheduled, _this.scheduled) || other.scheduled == _this.scheduled)&&(identical(other.in_progress, _this.in_progress) || other.in_progress == _this.in_progress)&&(identical(other.completion_rate, _this.completion_rate) || other.completion_rate == _this.completion_rate)&&(identical(other.cancellation_rate, _this.cancellation_rate) || other.cancellation_rate == _this.cancellation_rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppointmentsReportModel;
  return Object.hash(runtimeType,_this.period,_this.total,const DeepCollectionEquality().hash(_this.by_status),const DeepCollectionEquality().hash(_this.by_doctor),const DeepCollectionEquality().hash(_this.by_day),const DeepCollectionEquality().hash(_this.by_hour),_this.completed,_this.cancelled,_this.no_show,_this.scheduled,_this.in_progress,_this.completion_rate,_this.cancellation_rate);
}

@override
String toString() {
  final _this = this as AppointmentsReportModel;
  return 'AppointmentsReportModel(period: ${_this.period}, total: ${_this.total}, by_status: ${_this.by_status}, by_doctor: ${_this.by_doctor}, by_day: ${_this.by_day}, by_hour: ${_this.by_hour}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, no_show: ${_this.no_show}, scheduled: ${_this.scheduled}, in_progress: ${_this.in_progress}, completion_rate: ${_this.completion_rate}, cancellation_rate: ${_this.cancellation_rate})';
}


}

/// @nodoc
abstract mixin class $AppointmentsReportModelCopyWith<$Res>  {
  factory $AppointmentsReportModelCopyWith(AppointmentsReportModel value, $Res Function(AppointmentsReportModel) _then) = _$AppointmentsReportModelCopyWithImpl;
@useResult
$Res call({
 ReportPeriodModel period, int total, List<Map<String, dynamic>>? by_status, List<Map<String, dynamic>>? by_doctor, List<Map<String, dynamic>>? by_day, List<Map<String, dynamic>>? by_hour, int completed, int cancelled, int no_show, int scheduled, int in_progress, num completion_rate, num cancellation_rate
});


$ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class _$AppointmentsReportModelCopyWithImpl<$Res>
    implements $AppointmentsReportModelCopyWith<$Res> {
  _$AppointmentsReportModelCopyWithImpl(this._self, this._then);

  final AppointmentsReportModel _self;
  final $Res Function(AppointmentsReportModel) _then;

/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? total = null,Object? by_status = freezed,Object? by_doctor = freezed,Object? by_day = freezed,Object? by_hour = freezed,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? scheduled = null,Object? in_progress = null,Object? completion_rate = null,Object? cancellation_rate = null,}) {
  return _then(AppointmentsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_status: freezed == by_status ? _self.by_status : by_status // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_doctor: freezed == by_doctor ? _self.by_doctor : by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_day: freezed == by_day ? _self.by_day : by_day // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_hour: freezed == by_hour ? _self.by_hour : by_hour // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,in_progress: null == in_progress ? _self.in_progress : in_progress // ignore: cast_nullable_to_non_nullable
as int,completion_rate: null == completion_rate ? _self.completion_rate : completion_rate // ignore: cast_nullable_to_non_nullable
as num,cancellation_rate: null == cancellation_rate ? _self.cancellation_rate : cancellation_rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}
/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentsReportModel].
extension AppointmentsReportModelPatterns on AppointmentsReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentsReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentsReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentsReportModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentsReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentsReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentsReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total,  List<Map<String, dynamic>>? by_status,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? by_day,  List<Map<String, dynamic>>? by_hour,  int completed,  int cancelled,  int no_show,  int scheduled,  int in_progress,  num completion_rate,  num cancellation_rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentsReportModel() when $default != null:
return $default(_that.period,_that.total,_that.by_status,_that.by_doctor,_that.by_day,_that.by_hour,_that.completed,_that.cancelled,_that.no_show,_that.scheduled,_that.in_progress,_that.completion_rate,_that.cancellation_rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total,  List<Map<String, dynamic>>? by_status,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? by_day,  List<Map<String, dynamic>>? by_hour,  int completed,  int cancelled,  int no_show,  int scheduled,  int in_progress,  num completion_rate,  num cancellation_rate)  $default,) {final _that = this;
switch (_that) {
case _AppointmentsReportModel():
return $default(_that.period,_that.total,_that.by_status,_that.by_doctor,_that.by_day,_that.by_hour,_that.completed,_that.cancelled,_that.no_show,_that.scheduled,_that.in_progress,_that.completion_rate,_that.cancellation_rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriodModel period,  int total,  List<Map<String, dynamic>>? by_status,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? by_day,  List<Map<String, dynamic>>? by_hour,  int completed,  int cancelled,  int no_show,  int scheduled,  int in_progress,  num completion_rate,  num cancellation_rate)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentsReportModel() when $default != null:
return $default(_that.period,_that.total,_that.by_status,_that.by_doctor,_that.by_day,_that.by_hour,_that.completed,_that.cancelled,_that.no_show,_that.scheduled,_that.in_progress,_that.completion_rate,_that.cancellation_rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentsReportModel implements AppointmentsReportModel {
  const _AppointmentsReportModel({required this.period, required this.total, required  List<Map<String, dynamic>>? by_status, required  List<Map<String, dynamic>>? by_doctor, required  List<Map<String, dynamic>>? by_day, required  List<Map<String, dynamic>>? by_hour, required this.completed, required this.cancelled, required this.no_show, required this.scheduled, required this.in_progress, required this.completion_rate, required this.cancellation_rate}): _by_status = by_status,_by_doctor = by_doctor,_by_day = by_day,_by_hour = by_hour;
  factory _AppointmentsReportModel.fromJson(Map<String, dynamic> json) => _$AppointmentsReportModelFromJson(json);

@override final  ReportPeriodModel period;
@override final  int total;
 final  List<Map<String, dynamic>>? _by_status;
@override List<Map<String, dynamic>>? get by_status {
  final value = _by_status;
  if (value == null) return null;
  if (_by_status is EqualUnmodifiableListView) return _by_status;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _by_doctor;
@override List<Map<String, dynamic>>? get by_doctor {
  final value = _by_doctor;
  if (value == null) return null;
  if (_by_doctor is EqualUnmodifiableListView) return _by_doctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _by_day;
@override List<Map<String, dynamic>>? get by_day {
  final value = _by_day;
  if (value == null) return null;
  if (_by_day is EqualUnmodifiableListView) return _by_day;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _by_hour;
@override List<Map<String, dynamic>>? get by_hour {
  final value = _by_hour;
  if (value == null) return null;
  if (_by_hour is EqualUnmodifiableListView) return _by_hour;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int completed;
@override final  int cancelled;
@override final  int no_show;
@override final  int scheduled;
@override final  int in_progress;
@override final  num completion_rate;
@override final  num cancellation_rate;

/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentsReportModelCopyWith<_AppointmentsReportModel> get copyWith => __$AppointmentsReportModelCopyWithImpl<_AppointmentsReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentsReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentsReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.by_status, _by_status)&&const DeepCollectionEquality().equals(other.by_doctor, _by_doctor)&&const DeepCollectionEquality().equals(other.by_day, _by_day)&&const DeepCollectionEquality().equals(other.by_hour, _by_hour)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.no_show, no_show) || other.no_show == no_show)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.in_progress, in_progress) || other.in_progress == in_progress)&&(identical(other.completion_rate, completion_rate) || other.completion_rate == completion_rate)&&(identical(other.cancellation_rate, cancellation_rate) || other.cancellation_rate == cancellation_rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,total,const DeepCollectionEquality().hash(_by_status),const DeepCollectionEquality().hash(_by_doctor),const DeepCollectionEquality().hash(_by_day),const DeepCollectionEquality().hash(_by_hour),completed,cancelled,no_show,scheduled,in_progress,completion_rate,cancellation_rate);
}

@override
String toString() {
    return 'AppointmentsReportModel(period: $period, total: $total, by_status: $by_status, by_doctor: $by_doctor, by_day: $by_day, by_hour: $by_hour, completed: $completed, cancelled: $cancelled, no_show: $no_show, scheduled: $scheduled, in_progress: $in_progress, completion_rate: $completion_rate, cancellation_rate: $cancellation_rate)';
}


}

/// @nodoc
abstract mixin class _$AppointmentsReportModelCopyWith<$Res> implements $AppointmentsReportModelCopyWith<$Res> {
  factory _$AppointmentsReportModelCopyWith(_AppointmentsReportModel value, $Res Function(_AppointmentsReportModel) _then) = __$AppointmentsReportModelCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriodModel period, int total, List<Map<String, dynamic>>? by_status, List<Map<String, dynamic>>? by_doctor, List<Map<String, dynamic>>? by_day, List<Map<String, dynamic>>? by_hour, int completed, int cancelled, int no_show, int scheduled, int in_progress, num completion_rate, num cancellation_rate
});


@override $ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class __$AppointmentsReportModelCopyWithImpl<$Res>
    implements _$AppointmentsReportModelCopyWith<$Res> {
  __$AppointmentsReportModelCopyWithImpl(this._self, this._then);

  final _AppointmentsReportModel _self;
  final $Res Function(_AppointmentsReportModel) _then;

/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? total = null,Object? by_status = freezed,Object? by_doctor = freezed,Object? by_day = freezed,Object? by_hour = freezed,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? scheduled = null,Object? in_progress = null,Object? completion_rate = null,Object? cancellation_rate = null,}) {
  return _then(_AppointmentsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_status: freezed == by_status ? _self._by_status : by_status // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_doctor: freezed == by_doctor ? _self._by_doctor : by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_day: freezed == by_day ? _self._by_day : by_day // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_hour: freezed == by_hour ? _self._by_hour : by_hour // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,in_progress: null == in_progress ? _self.in_progress : in_progress // ignore: cast_nullable_to_non_nullable
as int,completion_rate: null == completion_rate ? _self.completion_rate : completion_rate // ignore: cast_nullable_to_non_nullable
as num,cancellation_rate: null == cancellation_rate ? _self.cancellation_rate : cancellation_rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

/// Create a copy of AppointmentsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}

// dart format on
