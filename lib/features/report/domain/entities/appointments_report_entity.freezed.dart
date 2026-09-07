// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentsReportEntity {

 String? get startDate; String? get endDate; int get days; int get total; List<Map<String, dynamic>> get byStatus; List<Map<String, dynamic>> get byDoctor; List<Map<String, dynamic>> get byDay; List<Map<String, dynamic>> get byHour; int get completed; int get cancelled; int get noShow; int get scheduled; int get inProgress; num get completionRate; num get cancellationRate;
/// Create a copy of AppointmentsReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsReportEntityCopyWith<AppointmentsReportEntity> get copyWith => _$AppointmentsReportEntityCopyWithImpl<AppointmentsReportEntity>(this as AppointmentsReportEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppointmentsReportEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsReportEntity&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.byStatus, _this.byStatus)&&const DeepCollectionEquality().equals(other.byDoctor, _this.byDoctor)&&const DeepCollectionEquality().equals(other.byDay, _this.byDay)&&const DeepCollectionEquality().equals(other.byHour, _this.byHour)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.noShow, _this.noShow) || other.noShow == _this.noShow)&&(identical(other.scheduled, _this.scheduled) || other.scheduled == _this.scheduled)&&(identical(other.inProgress, _this.inProgress) || other.inProgress == _this.inProgress)&&(identical(other.completionRate, _this.completionRate) || other.completionRate == _this.completionRate)&&(identical(other.cancellationRate, _this.cancellationRate) || other.cancellationRate == _this.cancellationRate));
}


@override
int get hashCode {
  final _this = this as AppointmentsReportEntity;
  return Object.hash(runtimeType,_this.startDate,_this.endDate,_this.days,_this.total,const DeepCollectionEquality().hash(_this.byStatus),const DeepCollectionEquality().hash(_this.byDoctor),const DeepCollectionEquality().hash(_this.byDay),const DeepCollectionEquality().hash(_this.byHour),_this.completed,_this.cancelled,_this.noShow,_this.scheduled,_this.inProgress,_this.completionRate,_this.cancellationRate);
}

@override
String toString() {
  final _this = this as AppointmentsReportEntity;
  return 'AppointmentsReportEntity(startDate: ${_this.startDate}, endDate: ${_this.endDate}, days: ${_this.days}, total: ${_this.total}, byStatus: ${_this.byStatus}, byDoctor: ${_this.byDoctor}, byDay: ${_this.byDay}, byHour: ${_this.byHour}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, noShow: ${_this.noShow}, scheduled: ${_this.scheduled}, inProgress: ${_this.inProgress}, completionRate: ${_this.completionRate}, cancellationRate: ${_this.cancellationRate})';
}


}

/// @nodoc
abstract mixin class $AppointmentsReportEntityCopyWith<$Res>  {
  factory $AppointmentsReportEntityCopyWith(AppointmentsReportEntity value, $Res Function(AppointmentsReportEntity) _then) = _$AppointmentsReportEntityCopyWithImpl;
@useResult
$Res call({
 String? startDate, String? endDate, int days, int total, List<Map<String, dynamic>> byStatus, List<Map<String, dynamic>> byDoctor, List<Map<String, dynamic>> byDay, List<Map<String, dynamic>> byHour, int completed, int cancelled, int noShow, int scheduled, int inProgress, num completionRate, num cancellationRate
});




}
/// @nodoc
class _$AppointmentsReportEntityCopyWithImpl<$Res>
    implements $AppointmentsReportEntityCopyWith<$Res> {
  _$AppointmentsReportEntityCopyWithImpl(this._self, this._then);

  final AppointmentsReportEntity _self;
  final $Res Function(AppointmentsReportEntity) _then;

/// Create a copy of AppointmentsReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? total = null,Object? byStatus = null,Object? byDoctor = null,Object? byDay = null,Object? byHour = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? scheduled = null,Object? inProgress = null,Object? completionRate = null,Object? cancellationRate = null,}) {
  return _then(AppointmentsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byStatus: null == byStatus ? _self.byStatus : byStatus // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDoctor: null == byDoctor ? _self.byDoctor : byDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDay: null == byDay ? _self.byDay : byDay // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byHour: null == byHour ? _self.byHour : byHour // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,inProgress: null == inProgress ? _self.inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as num,cancellationRate: null == cancellationRate ? _self.cancellationRate : cancellationRate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentsReportEntity].
extension AppointmentsReportEntityPatterns on AppointmentsReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentsReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentsReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentsReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentsReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentsReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentsReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int total,  List<Map<String, dynamic>> byStatus,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> byDay,  List<Map<String, dynamic>> byHour,  int completed,  int cancelled,  int noShow,  int scheduled,  int inProgress,  num completionRate,  num cancellationRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.total,_that.byStatus,_that.byDoctor,_that.byDay,_that.byHour,_that.completed,_that.cancelled,_that.noShow,_that.scheduled,_that.inProgress,_that.completionRate,_that.cancellationRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int total,  List<Map<String, dynamic>> byStatus,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> byDay,  List<Map<String, dynamic>> byHour,  int completed,  int cancelled,  int noShow,  int scheduled,  int inProgress,  num completionRate,  num cancellationRate)  $default,) {final _that = this;
switch (_that) {
case _AppointmentsReportEntity():
return $default(_that.startDate,_that.endDate,_that.days,_that.total,_that.byStatus,_that.byDoctor,_that.byDay,_that.byHour,_that.completed,_that.cancelled,_that.noShow,_that.scheduled,_that.inProgress,_that.completionRate,_that.cancellationRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? startDate,  String? endDate,  int days,  int total,  List<Map<String, dynamic>> byStatus,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> byDay,  List<Map<String, dynamic>> byHour,  int completed,  int cancelled,  int noShow,  int scheduled,  int inProgress,  num completionRate,  num cancellationRate)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.total,_that.byStatus,_that.byDoctor,_that.byDay,_that.byHour,_that.completed,_that.cancelled,_that.noShow,_that.scheduled,_that.inProgress,_that.completionRate,_that.cancellationRate);case _:
  return null;

}
}

}

/// @nodoc


class _AppointmentsReportEntity implements AppointmentsReportEntity {
  const _AppointmentsReportEntity({required this.startDate, required this.endDate, required this.days, required this.total, required  List<Map<String, dynamic>> byStatus, required  List<Map<String, dynamic>> byDoctor, required  List<Map<String, dynamic>> byDay, required  List<Map<String, dynamic>> byHour, required this.completed, required this.cancelled, required this.noShow, required this.scheduled, required this.inProgress, required this.completionRate, required this.cancellationRate}): _byStatus = byStatus,_byDoctor = byDoctor,_byDay = byDay,_byHour = byHour;
  

@override final  String? startDate;
@override final  String? endDate;
@override final  int days;
@override final  int total;
 final  List<Map<String, dynamic>> _byStatus;
@override List<Map<String, dynamic>> get byStatus {
  if (_byStatus is EqualUnmodifiableListView) return _byStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byStatus);
}

 final  List<Map<String, dynamic>> _byDoctor;
@override List<Map<String, dynamic>> get byDoctor {
  if (_byDoctor is EqualUnmodifiableListView) return _byDoctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byDoctor);
}

 final  List<Map<String, dynamic>> _byDay;
@override List<Map<String, dynamic>> get byDay {
  if (_byDay is EqualUnmodifiableListView) return _byDay;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byDay);
}

 final  List<Map<String, dynamic>> _byHour;
@override List<Map<String, dynamic>> get byHour {
  if (_byHour is EqualUnmodifiableListView) return _byHour;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byHour);
}

@override final  int completed;
@override final  int cancelled;
@override final  int noShow;
@override final  int scheduled;
@override final  int inProgress;
@override final  num completionRate;
@override final  num cancellationRate;

/// Create a copy of AppointmentsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentsReportEntityCopyWith<_AppointmentsReportEntity> get copyWith => __$AppointmentsReportEntityCopyWithImpl<_AppointmentsReportEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentsReportEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.byStatus, _byStatus)&&const DeepCollectionEquality().equals(other.byDoctor, _byDoctor)&&const DeepCollectionEquality().equals(other.byDay, _byDay)&&const DeepCollectionEquality().equals(other.byHour, _byHour)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.noShow, noShow) || other.noShow == noShow)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.inProgress, inProgress) || other.inProgress == inProgress)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.cancellationRate, cancellationRate) || other.cancellationRate == cancellationRate));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startDate,endDate,days,total,const DeepCollectionEquality().hash(_byStatus),const DeepCollectionEquality().hash(_byDoctor),const DeepCollectionEquality().hash(_byDay),const DeepCollectionEquality().hash(_byHour),completed,cancelled,noShow,scheduled,inProgress,completionRate,cancellationRate);
}

@override
String toString() {
    return 'AppointmentsReportEntity(startDate: $startDate, endDate: $endDate, days: $days, total: $total, byStatus: $byStatus, byDoctor: $byDoctor, byDay: $byDay, byHour: $byHour, completed: $completed, cancelled: $cancelled, noShow: $noShow, scheduled: $scheduled, inProgress: $inProgress, completionRate: $completionRate, cancellationRate: $cancellationRate)';
}


}

/// @nodoc
abstract mixin class _$AppointmentsReportEntityCopyWith<$Res> implements $AppointmentsReportEntityCopyWith<$Res> {
  factory _$AppointmentsReportEntityCopyWith(_AppointmentsReportEntity value, $Res Function(_AppointmentsReportEntity) _then) = __$AppointmentsReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String? startDate, String? endDate, int days, int total, List<Map<String, dynamic>> byStatus, List<Map<String, dynamic>> byDoctor, List<Map<String, dynamic>> byDay, List<Map<String, dynamic>> byHour, int completed, int cancelled, int noShow, int scheduled, int inProgress, num completionRate, num cancellationRate
});




}
/// @nodoc
class __$AppointmentsReportEntityCopyWithImpl<$Res>
    implements _$AppointmentsReportEntityCopyWith<$Res> {
  __$AppointmentsReportEntityCopyWithImpl(this._self, this._then);

  final _AppointmentsReportEntity _self;
  final $Res Function(_AppointmentsReportEntity) _then;

/// Create a copy of AppointmentsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? total = null,Object? byStatus = null,Object? byDoctor = null,Object? byDay = null,Object? byHour = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? scheduled = null,Object? inProgress = null,Object? completionRate = null,Object? cancellationRate = null,}) {
  return _then(_AppointmentsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byStatus: null == byStatus ? _self._byStatus : byStatus // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDoctor: null == byDoctor ? _self._byDoctor : byDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDay: null == byDay ? _self._byDay : byDay // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byHour: null == byHour ? _self._byHour : byHour // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as int,inProgress: null == inProgress ? _self.inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as num,cancellationRate: null == cancellationRate ? _self.cancellationRate : cancellationRate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
