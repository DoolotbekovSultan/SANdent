// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorsReportEntity {

 String? get startDate; String? get endDate; int get days; int get totalDoctors; List<DoctorStatEntity> get doctorStats; DoctorStatEntity? get topDoctor;
/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsReportEntityCopyWith<DoctorsReportEntity> get copyWith => _$DoctorsReportEntityCopyWithImpl<DoctorsReportEntity>(this as DoctorsReportEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DoctorsReportEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsReportEntity&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.totalDoctors, _this.totalDoctors) || other.totalDoctors == _this.totalDoctors)&&const DeepCollectionEquality().equals(other.doctorStats, _this.doctorStats)&&(identical(other.topDoctor, _this.topDoctor) || other.topDoctor == _this.topDoctor));
}


@override
int get hashCode {
  final _this = this as DoctorsReportEntity;
  return Object.hash(runtimeType,_this.startDate,_this.endDate,_this.days,_this.totalDoctors,const DeepCollectionEquality().hash(_this.doctorStats),_this.topDoctor);
}

@override
String toString() {
  final _this = this as DoctorsReportEntity;
  return 'DoctorsReportEntity(startDate: ${_this.startDate}, endDate: ${_this.endDate}, days: ${_this.days}, totalDoctors: ${_this.totalDoctors}, doctorStats: ${_this.doctorStats}, topDoctor: ${_this.topDoctor})';
}


}

/// @nodoc
abstract mixin class $DoctorsReportEntityCopyWith<$Res>  {
  factory $DoctorsReportEntityCopyWith(DoctorsReportEntity value, $Res Function(DoctorsReportEntity) _then) = _$DoctorsReportEntityCopyWithImpl;
@useResult
$Res call({
 String? startDate, String? endDate, int days, int totalDoctors, List<DoctorStatEntity> doctorStats, DoctorStatEntity? topDoctor
});


$DoctorStatEntityCopyWith<$Res>? get topDoctor;

}
/// @nodoc
class _$DoctorsReportEntityCopyWithImpl<$Res>
    implements $DoctorsReportEntityCopyWith<$Res> {
  _$DoctorsReportEntityCopyWithImpl(this._self, this._then);

  final DoctorsReportEntity _self;
  final $Res Function(DoctorsReportEntity) _then;

/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalDoctors = null,Object? doctorStats = null,Object? topDoctor = freezed,}) {
  return _then(DoctorsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalDoctors: null == totalDoctors ? _self.totalDoctors : totalDoctors // ignore: cast_nullable_to_non_nullable
as int,doctorStats: null == doctorStats ? _self.doctorStats : doctorStats // ignore: cast_nullable_to_non_nullable
as List<DoctorStatEntity>,topDoctor: freezed == topDoctor ? _self.topDoctor : topDoctor // ignore: cast_nullable_to_non_nullable
as DoctorStatEntity?,
  ));
}
/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorStatEntityCopyWith<$Res>? get topDoctor {
    if (_self.topDoctor == null) {
    return null;
  }

  return $DoctorStatEntityCopyWith<$Res>(_self.topDoctor!, (value) {
    return _then(_self.copyWith(topDoctor: value));
  });
}
}


/// Adds pattern-matching-related methods to [DoctorsReportEntity].
extension DoctorsReportEntityPatterns on DoctorsReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorsReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorsReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorsReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _DoctorsReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorsReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorsReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalDoctors,  List<DoctorStatEntity> doctorStats,  DoctorStatEntity? topDoctor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalDoctors,_that.doctorStats,_that.topDoctor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalDoctors,  List<DoctorStatEntity> doctorStats,  DoctorStatEntity? topDoctor)  $default,) {final _that = this;
switch (_that) {
case _DoctorsReportEntity():
return $default(_that.startDate,_that.endDate,_that.days,_that.totalDoctors,_that.doctorStats,_that.topDoctor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? startDate,  String? endDate,  int days,  int totalDoctors,  List<DoctorStatEntity> doctorStats,  DoctorStatEntity? topDoctor)?  $default,) {final _that = this;
switch (_that) {
case _DoctorsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalDoctors,_that.doctorStats,_that.topDoctor);case _:
  return null;

}
}

}

/// @nodoc


class _DoctorsReportEntity implements DoctorsReportEntity {
  const _DoctorsReportEntity({required this.startDate, required this.endDate, required this.days, required this.totalDoctors, required  List<DoctorStatEntity> doctorStats, required this.topDoctor}): _doctorStats = doctorStats;
  

@override final  String? startDate;
@override final  String? endDate;
@override final  int days;
@override final  int totalDoctors;
 final  List<DoctorStatEntity> _doctorStats;
@override List<DoctorStatEntity> get doctorStats {
  if (_doctorStats is EqualUnmodifiableListView) return _doctorStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctorStats);
}

@override final  DoctorStatEntity? topDoctor;

/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorsReportEntityCopyWith<_DoctorsReportEntity> get copyWith => __$DoctorsReportEntityCopyWithImpl<_DoctorsReportEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorsReportEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.totalDoctors, totalDoctors) || other.totalDoctors == totalDoctors)&&const DeepCollectionEquality().equals(other.doctorStats, _doctorStats)&&(identical(other.topDoctor, topDoctor) || other.topDoctor == topDoctor));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startDate,endDate,days,totalDoctors,const DeepCollectionEquality().hash(_doctorStats),topDoctor);
}

@override
String toString() {
    return 'DoctorsReportEntity(startDate: $startDate, endDate: $endDate, days: $days, totalDoctors: $totalDoctors, doctorStats: $doctorStats, topDoctor: $topDoctor)';
}


}

/// @nodoc
abstract mixin class _$DoctorsReportEntityCopyWith<$Res> implements $DoctorsReportEntityCopyWith<$Res> {
  factory _$DoctorsReportEntityCopyWith(_DoctorsReportEntity value, $Res Function(_DoctorsReportEntity) _then) = __$DoctorsReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String? startDate, String? endDate, int days, int totalDoctors, List<DoctorStatEntity> doctorStats, DoctorStatEntity? topDoctor
});


@override $DoctorStatEntityCopyWith<$Res>? get topDoctor;

}
/// @nodoc
class __$DoctorsReportEntityCopyWithImpl<$Res>
    implements _$DoctorsReportEntityCopyWith<$Res> {
  __$DoctorsReportEntityCopyWithImpl(this._self, this._then);

  final _DoctorsReportEntity _self;
  final $Res Function(_DoctorsReportEntity) _then;

/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalDoctors = null,Object? doctorStats = null,Object? topDoctor = freezed,}) {
  return _then(_DoctorsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalDoctors: null == totalDoctors ? _self.totalDoctors : totalDoctors // ignore: cast_nullable_to_non_nullable
as int,doctorStats: null == doctorStats ? _self._doctorStats : doctorStats // ignore: cast_nullable_to_non_nullable
as List<DoctorStatEntity>,topDoctor: freezed == topDoctor ? _self.topDoctor : topDoctor // ignore: cast_nullable_to_non_nullable
as DoctorStatEntity?,
  ));
}

/// Create a copy of DoctorsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorStatEntityCopyWith<$Res>? get topDoctor {
    if (_self.topDoctor == null) {
    return null;
  }

  return $DoctorStatEntityCopyWith<$Res>(_self.topDoctor!, (value) {
    return _then(_self.copyWith(topDoctor: value));
  });
}
}

/// @nodoc
mixin _$DoctorStatEntity {

 int get doctorId; String? get doctorName; int get totalAppointments; int get completed; int get cancelled; int get noShow; num get completionRate; int get uniquePatients; int get procedureCount; num get avgProceduresPerAppointment;
/// Create a copy of DoctorStatEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorStatEntityCopyWith<DoctorStatEntity> get copyWith => _$DoctorStatEntityCopyWithImpl<DoctorStatEntity>(this as DoctorStatEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DoctorStatEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorStatEntity&&(identical(other.doctorId, _this.doctorId) || other.doctorId == _this.doctorId)&&(identical(other.doctorName, _this.doctorName) || other.doctorName == _this.doctorName)&&(identical(other.totalAppointments, _this.totalAppointments) || other.totalAppointments == _this.totalAppointments)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.noShow, _this.noShow) || other.noShow == _this.noShow)&&(identical(other.completionRate, _this.completionRate) || other.completionRate == _this.completionRate)&&(identical(other.uniquePatients, _this.uniquePatients) || other.uniquePatients == _this.uniquePatients)&&(identical(other.procedureCount, _this.procedureCount) || other.procedureCount == _this.procedureCount)&&(identical(other.avgProceduresPerAppointment, _this.avgProceduresPerAppointment) || other.avgProceduresPerAppointment == _this.avgProceduresPerAppointment));
}


@override
int get hashCode {
  final _this = this as DoctorStatEntity;
  return Object.hash(runtimeType,_this.doctorId,_this.doctorName,_this.totalAppointments,_this.completed,_this.cancelled,_this.noShow,_this.completionRate,_this.uniquePatients,_this.procedureCount,_this.avgProceduresPerAppointment);
}

@override
String toString() {
  final _this = this as DoctorStatEntity;
  return 'DoctorStatEntity(doctorId: ${_this.doctorId}, doctorName: ${_this.doctorName}, totalAppointments: ${_this.totalAppointments}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, noShow: ${_this.noShow}, completionRate: ${_this.completionRate}, uniquePatients: ${_this.uniquePatients}, procedureCount: ${_this.procedureCount}, avgProceduresPerAppointment: ${_this.avgProceduresPerAppointment})';
}


}

/// @nodoc
abstract mixin class $DoctorStatEntityCopyWith<$Res>  {
  factory $DoctorStatEntityCopyWith(DoctorStatEntity value, $Res Function(DoctorStatEntity) _then) = _$DoctorStatEntityCopyWithImpl;
@useResult
$Res call({
 int doctorId, String? doctorName, int totalAppointments, int completed, int cancelled, int noShow, num completionRate, int uniquePatients, int procedureCount, num avgProceduresPerAppointment
});




}
/// @nodoc
class _$DoctorStatEntityCopyWithImpl<$Res>
    implements $DoctorStatEntityCopyWith<$Res> {
  _$DoctorStatEntityCopyWithImpl(this._self, this._then);

  final DoctorStatEntity _self;
  final $Res Function(DoctorStatEntity) _then;

/// Create a copy of DoctorStatEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorId = null,Object? doctorName = freezed,Object? totalAppointments = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? completionRate = null,Object? uniquePatients = null,Object? procedureCount = null,Object? avgProceduresPerAppointment = null,}) {
  return _then(DoctorStatEntity(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as num,uniquePatients: null == uniquePatients ? _self.uniquePatients : uniquePatients // ignore: cast_nullable_to_non_nullable
as int,procedureCount: null == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int,avgProceduresPerAppointment: null == avgProceduresPerAppointment ? _self.avgProceduresPerAppointment : avgProceduresPerAppointment // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorStatEntity].
extension DoctorStatEntityPatterns on DoctorStatEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorStatEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorStatEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorStatEntity value)  $default,){
final _that = this;
switch (_that) {
case _DoctorStatEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorStatEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorStatEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int doctorId,  String? doctorName,  int totalAppointments,  int completed,  int cancelled,  int noShow,  num completionRate,  int uniquePatients,  int procedureCount,  num avgProceduresPerAppointment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorStatEntity() when $default != null:
return $default(_that.doctorId,_that.doctorName,_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.completionRate,_that.uniquePatients,_that.procedureCount,_that.avgProceduresPerAppointment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int doctorId,  String? doctorName,  int totalAppointments,  int completed,  int cancelled,  int noShow,  num completionRate,  int uniquePatients,  int procedureCount,  num avgProceduresPerAppointment)  $default,) {final _that = this;
switch (_that) {
case _DoctorStatEntity():
return $default(_that.doctorId,_that.doctorName,_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.completionRate,_that.uniquePatients,_that.procedureCount,_that.avgProceduresPerAppointment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int doctorId,  String? doctorName,  int totalAppointments,  int completed,  int cancelled,  int noShow,  num completionRate,  int uniquePatients,  int procedureCount,  num avgProceduresPerAppointment)?  $default,) {final _that = this;
switch (_that) {
case _DoctorStatEntity() when $default != null:
return $default(_that.doctorId,_that.doctorName,_that.totalAppointments,_that.completed,_that.cancelled,_that.noShow,_that.completionRate,_that.uniquePatients,_that.procedureCount,_that.avgProceduresPerAppointment);case _:
  return null;

}
}

}

/// @nodoc


class _DoctorStatEntity implements DoctorStatEntity {
  const _DoctorStatEntity({required this.doctorId, required this.doctorName, required this.totalAppointments, required this.completed, required this.cancelled, required this.noShow, required this.completionRate, required this.uniquePatients, required this.procedureCount, required this.avgProceduresPerAppointment});
  

@override final  int doctorId;
@override final  String? doctorName;
@override final  int totalAppointments;
@override final  int completed;
@override final  int cancelled;
@override final  int noShow;
@override final  num completionRate;
@override final  int uniquePatients;
@override final  int procedureCount;
@override final  num avgProceduresPerAppointment;

/// Create a copy of DoctorStatEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorStatEntityCopyWith<_DoctorStatEntity> get copyWith => __$DoctorStatEntityCopyWithImpl<_DoctorStatEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorStatEntity&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.totalAppointments, totalAppointments) || other.totalAppointments == totalAppointments)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.noShow, noShow) || other.noShow == noShow)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.uniquePatients, uniquePatients) || other.uniquePatients == uniquePatients)&&(identical(other.procedureCount, procedureCount) || other.procedureCount == procedureCount)&&(identical(other.avgProceduresPerAppointment, avgProceduresPerAppointment) || other.avgProceduresPerAppointment == avgProceduresPerAppointment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,doctorId,doctorName,totalAppointments,completed,cancelled,noShow,completionRate,uniquePatients,procedureCount,avgProceduresPerAppointment);
}

@override
String toString() {
    return 'DoctorStatEntity(doctorId: $doctorId, doctorName: $doctorName, totalAppointments: $totalAppointments, completed: $completed, cancelled: $cancelled, noShow: $noShow, completionRate: $completionRate, uniquePatients: $uniquePatients, procedureCount: $procedureCount, avgProceduresPerAppointment: $avgProceduresPerAppointment)';
}


}

/// @nodoc
abstract mixin class _$DoctorStatEntityCopyWith<$Res> implements $DoctorStatEntityCopyWith<$Res> {
  factory _$DoctorStatEntityCopyWith(_DoctorStatEntity value, $Res Function(_DoctorStatEntity) _then) = __$DoctorStatEntityCopyWithImpl;
@override @useResult
$Res call({
 int doctorId, String? doctorName, int totalAppointments, int completed, int cancelled, int noShow, num completionRate, int uniquePatients, int procedureCount, num avgProceduresPerAppointment
});




}
/// @nodoc
class __$DoctorStatEntityCopyWithImpl<$Res>
    implements _$DoctorStatEntityCopyWith<$Res> {
  __$DoctorStatEntityCopyWithImpl(this._self, this._then);

  final _DoctorStatEntity _self;
  final $Res Function(_DoctorStatEntity) _then;

/// Create a copy of DoctorStatEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorId = null,Object? doctorName = freezed,Object? totalAppointments = null,Object? completed = null,Object? cancelled = null,Object? noShow = null,Object? completionRate = null,Object? uniquePatients = null,Object? procedureCount = null,Object? avgProceduresPerAppointment = null,}) {
  return _then(_DoctorStatEntity(
doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,noShow: null == noShow ? _self.noShow : noShow // ignore: cast_nullable_to_non_nullable
as int,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as num,uniquePatients: null == uniquePatients ? _self.uniquePatients : uniquePatients // ignore: cast_nullable_to_non_nullable
as int,procedureCount: null == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int,avgProceduresPerAppointment: null == avgProceduresPerAppointment ? _self.avgProceduresPerAppointment : avgProceduresPerAppointment // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
