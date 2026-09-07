// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoctorsReportModel {

 ReportPeriodModel get period; int get total_doctors; List<DoctorStatModel>? get doctor_stats; DoctorStatModel? get top_doctor;
/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsReportModelCopyWith<DoctorsReportModel> get copyWith => _$DoctorsReportModelCopyWithImpl<DoctorsReportModel>(this as DoctorsReportModel, _$identity);

  /// Serializes this DoctorsReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DoctorsReportModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsReportModel&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.total_doctors, _this.total_doctors) || other.total_doctors == _this.total_doctors)&&const DeepCollectionEquality().equals(other.doctor_stats, _this.doctor_stats)&&(identical(other.top_doctor, _this.top_doctor) || other.top_doctor == _this.top_doctor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DoctorsReportModel;
  return Object.hash(runtimeType,_this.period,_this.total_doctors,const DeepCollectionEquality().hash(_this.doctor_stats),_this.top_doctor);
}

@override
String toString() {
  final _this = this as DoctorsReportModel;
  return 'DoctorsReportModel(period: ${_this.period}, total_doctors: ${_this.total_doctors}, doctor_stats: ${_this.doctor_stats}, top_doctor: ${_this.top_doctor})';
}


}

/// @nodoc
abstract mixin class $DoctorsReportModelCopyWith<$Res>  {
  factory $DoctorsReportModelCopyWith(DoctorsReportModel value, $Res Function(DoctorsReportModel) _then) = _$DoctorsReportModelCopyWithImpl;
@useResult
$Res call({
 ReportPeriodModel period, int total_doctors, List<DoctorStatModel>? doctor_stats, DoctorStatModel? top_doctor
});


$ReportPeriodModelCopyWith<$Res> get period;$DoctorStatModelCopyWith<$Res>? get top_doctor;

}
/// @nodoc
class _$DoctorsReportModelCopyWithImpl<$Res>
    implements $DoctorsReportModelCopyWith<$Res> {
  _$DoctorsReportModelCopyWithImpl(this._self, this._then);

  final DoctorsReportModel _self;
  final $Res Function(DoctorsReportModel) _then;

/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? total_doctors = null,Object? doctor_stats = freezed,Object? top_doctor = freezed,}) {
  return _then(DoctorsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_doctors: null == total_doctors ? _self.total_doctors : total_doctors // ignore: cast_nullable_to_non_nullable
as int,doctor_stats: freezed == doctor_stats ? _self.doctor_stats : doctor_stats // ignore: cast_nullable_to_non_nullable
as List<DoctorStatModel>?,top_doctor: freezed == top_doctor ? _self.top_doctor : top_doctor // ignore: cast_nullable_to_non_nullable
as DoctorStatModel?,
  ));
}
/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorStatModelCopyWith<$Res>? get top_doctor {
    if (_self.top_doctor == null) {
    return null;
  }

  return $DoctorStatModelCopyWith<$Res>(_self.top_doctor!, (value) {
    return _then(_self.copyWith(top_doctor: value));
  });
}
}


/// Adds pattern-matching-related methods to [DoctorsReportModel].
extension DoctorsReportModelPatterns on DoctorsReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorsReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorsReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorsReportModel value)  $default,){
final _that = this;
switch (_that) {
case _DoctorsReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorsReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorsReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_doctors,  List<DoctorStatModel>? doctor_stats,  DoctorStatModel? top_doctor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorsReportModel() when $default != null:
return $default(_that.period,_that.total_doctors,_that.doctor_stats,_that.top_doctor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_doctors,  List<DoctorStatModel>? doctor_stats,  DoctorStatModel? top_doctor)  $default,) {final _that = this;
switch (_that) {
case _DoctorsReportModel():
return $default(_that.period,_that.total_doctors,_that.doctor_stats,_that.top_doctor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriodModel period,  int total_doctors,  List<DoctorStatModel>? doctor_stats,  DoctorStatModel? top_doctor)?  $default,) {final _that = this;
switch (_that) {
case _DoctorsReportModel() when $default != null:
return $default(_that.period,_that.total_doctors,_that.doctor_stats,_that.top_doctor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoctorsReportModel implements DoctorsReportModel {
  const _DoctorsReportModel({required this.period, required this.total_doctors, required  List<DoctorStatModel>? doctor_stats, required this.top_doctor}): _doctor_stats = doctor_stats;
  factory _DoctorsReportModel.fromJson(Map<String, dynamic> json) => _$DoctorsReportModelFromJson(json);

@override final  ReportPeriodModel period;
@override final  int total_doctors;
 final  List<DoctorStatModel>? _doctor_stats;
@override List<DoctorStatModel>? get doctor_stats {
  final value = _doctor_stats;
  if (value == null) return null;
  if (_doctor_stats is EqualUnmodifiableListView) return _doctor_stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DoctorStatModel? top_doctor;

/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorsReportModelCopyWith<_DoctorsReportModel> get copyWith => __$DoctorsReportModelCopyWithImpl<_DoctorsReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoctorsReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorsReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.total_doctors, total_doctors) || other.total_doctors == total_doctors)&&const DeepCollectionEquality().equals(other.doctor_stats, _doctor_stats)&&(identical(other.top_doctor, top_doctor) || other.top_doctor == top_doctor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,total_doctors,const DeepCollectionEquality().hash(_doctor_stats),top_doctor);
}

@override
String toString() {
    return 'DoctorsReportModel(period: $period, total_doctors: $total_doctors, doctor_stats: $doctor_stats, top_doctor: $top_doctor)';
}


}

/// @nodoc
abstract mixin class _$DoctorsReportModelCopyWith<$Res> implements $DoctorsReportModelCopyWith<$Res> {
  factory _$DoctorsReportModelCopyWith(_DoctorsReportModel value, $Res Function(_DoctorsReportModel) _then) = __$DoctorsReportModelCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriodModel period, int total_doctors, List<DoctorStatModel>? doctor_stats, DoctorStatModel? top_doctor
});


@override $ReportPeriodModelCopyWith<$Res> get period;@override $DoctorStatModelCopyWith<$Res>? get top_doctor;

}
/// @nodoc
class __$DoctorsReportModelCopyWithImpl<$Res>
    implements _$DoctorsReportModelCopyWith<$Res> {
  __$DoctorsReportModelCopyWithImpl(this._self, this._then);

  final _DoctorsReportModel _self;
  final $Res Function(_DoctorsReportModel) _then;

/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? total_doctors = null,Object? doctor_stats = freezed,Object? top_doctor = freezed,}) {
  return _then(_DoctorsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_doctors: null == total_doctors ? _self.total_doctors : total_doctors // ignore: cast_nullable_to_non_nullable
as int,doctor_stats: freezed == doctor_stats ? _self._doctor_stats : doctor_stats // ignore: cast_nullable_to_non_nullable
as List<DoctorStatModel>?,top_doctor: freezed == top_doctor ? _self.top_doctor : top_doctor // ignore: cast_nullable_to_non_nullable
as DoctorStatModel?,
  ));
}

/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of DoctorsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorStatModelCopyWith<$Res>? get top_doctor {
    if (_self.top_doctor == null) {
    return null;
  }

  return $DoctorStatModelCopyWith<$Res>(_self.top_doctor!, (value) {
    return _then(_self.copyWith(top_doctor: value));
  });
}
}


/// @nodoc
mixin _$DoctorStatModel {

 int get doctor_id; String? get doctor_name; int get total_appointments; int get completed; int get cancelled; int get no_show; num get completion_rate; int get unique_patients; int get procedure_count; num get avg_procedures_per_appointment;
/// Create a copy of DoctorStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorStatModelCopyWith<DoctorStatModel> get copyWith => _$DoctorStatModelCopyWithImpl<DoctorStatModel>(this as DoctorStatModel, _$identity);

  /// Serializes this DoctorStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DoctorStatModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorStatModel&&(identical(other.doctor_id, _this.doctor_id) || other.doctor_id == _this.doctor_id)&&(identical(other.doctor_name, _this.doctor_name) || other.doctor_name == _this.doctor_name)&&(identical(other.total_appointments, _this.total_appointments) || other.total_appointments == _this.total_appointments)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.no_show, _this.no_show) || other.no_show == _this.no_show)&&(identical(other.completion_rate, _this.completion_rate) || other.completion_rate == _this.completion_rate)&&(identical(other.unique_patients, _this.unique_patients) || other.unique_patients == _this.unique_patients)&&(identical(other.procedure_count, _this.procedure_count) || other.procedure_count == _this.procedure_count)&&(identical(other.avg_procedures_per_appointment, _this.avg_procedures_per_appointment) || other.avg_procedures_per_appointment == _this.avg_procedures_per_appointment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DoctorStatModel;
  return Object.hash(runtimeType,_this.doctor_id,_this.doctor_name,_this.total_appointments,_this.completed,_this.cancelled,_this.no_show,_this.completion_rate,_this.unique_patients,_this.procedure_count,_this.avg_procedures_per_appointment);
}

@override
String toString() {
  final _this = this as DoctorStatModel;
  return 'DoctorStatModel(doctor_id: ${_this.doctor_id}, doctor_name: ${_this.doctor_name}, total_appointments: ${_this.total_appointments}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, no_show: ${_this.no_show}, completion_rate: ${_this.completion_rate}, unique_patients: ${_this.unique_patients}, procedure_count: ${_this.procedure_count}, avg_procedures_per_appointment: ${_this.avg_procedures_per_appointment})';
}


}

/// @nodoc
abstract mixin class $DoctorStatModelCopyWith<$Res>  {
  factory $DoctorStatModelCopyWith(DoctorStatModel value, $Res Function(DoctorStatModel) _then) = _$DoctorStatModelCopyWithImpl;
@useResult
$Res call({
 int doctor_id, String? doctor_name, int total_appointments, int completed, int cancelled, int no_show, num completion_rate, int unique_patients, int procedure_count, num avg_procedures_per_appointment
});




}
/// @nodoc
class _$DoctorStatModelCopyWithImpl<$Res>
    implements $DoctorStatModelCopyWith<$Res> {
  _$DoctorStatModelCopyWithImpl(this._self, this._then);

  final DoctorStatModel _self;
  final $Res Function(DoctorStatModel) _then;

/// Create a copy of DoctorStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctor_id = null,Object? doctor_name = freezed,Object? total_appointments = null,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? completion_rate = null,Object? unique_patients = null,Object? procedure_count = null,Object? avg_procedures_per_appointment = null,}) {
  return _then(DoctorStatModel(
doctor_id: null == doctor_id ? _self.doctor_id : doctor_id // ignore: cast_nullable_to_non_nullable
as int,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,completion_rate: null == completion_rate ? _self.completion_rate : completion_rate // ignore: cast_nullable_to_non_nullable
as num,unique_patients: null == unique_patients ? _self.unique_patients : unique_patients // ignore: cast_nullable_to_non_nullable
as int,procedure_count: null == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int,avg_procedures_per_appointment: null == avg_procedures_per_appointment ? _self.avg_procedures_per_appointment : avg_procedures_per_appointment // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorStatModel].
extension DoctorStatModelPatterns on DoctorStatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorStatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorStatModel value)  $default,){
final _that = this;
switch (_that) {
case _DoctorStatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorStatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int doctor_id,  String? doctor_name,  int total_appointments,  int completed,  int cancelled,  int no_show,  num completion_rate,  int unique_patients,  int procedure_count,  num avg_procedures_per_appointment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorStatModel() when $default != null:
return $default(_that.doctor_id,_that.doctor_name,_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.completion_rate,_that.unique_patients,_that.procedure_count,_that.avg_procedures_per_appointment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int doctor_id,  String? doctor_name,  int total_appointments,  int completed,  int cancelled,  int no_show,  num completion_rate,  int unique_patients,  int procedure_count,  num avg_procedures_per_appointment)  $default,) {final _that = this;
switch (_that) {
case _DoctorStatModel():
return $default(_that.doctor_id,_that.doctor_name,_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.completion_rate,_that.unique_patients,_that.procedure_count,_that.avg_procedures_per_appointment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int doctor_id,  String? doctor_name,  int total_appointments,  int completed,  int cancelled,  int no_show,  num completion_rate,  int unique_patients,  int procedure_count,  num avg_procedures_per_appointment)?  $default,) {final _that = this;
switch (_that) {
case _DoctorStatModel() when $default != null:
return $default(_that.doctor_id,_that.doctor_name,_that.total_appointments,_that.completed,_that.cancelled,_that.no_show,_that.completion_rate,_that.unique_patients,_that.procedure_count,_that.avg_procedures_per_appointment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoctorStatModel implements DoctorStatModel {
  const _DoctorStatModel({required this.doctor_id, required this.doctor_name, required this.total_appointments, required this.completed, required this.cancelled, required this.no_show, required this.completion_rate, required this.unique_patients, required this.procedure_count, required this.avg_procedures_per_appointment});
  factory _DoctorStatModel.fromJson(Map<String, dynamic> json) => _$DoctorStatModelFromJson(json);

@override final  int doctor_id;
@override final  String? doctor_name;
@override final  int total_appointments;
@override final  int completed;
@override final  int cancelled;
@override final  int no_show;
@override final  num completion_rate;
@override final  int unique_patients;
@override final  int procedure_count;
@override final  num avg_procedures_per_appointment;

/// Create a copy of DoctorStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorStatModelCopyWith<_DoctorStatModel> get copyWith => __$DoctorStatModelCopyWithImpl<_DoctorStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoctorStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorStatModel&&(identical(other.doctor_id, doctor_id) || other.doctor_id == doctor_id)&&(identical(other.doctor_name, doctor_name) || other.doctor_name == doctor_name)&&(identical(other.total_appointments, total_appointments) || other.total_appointments == total_appointments)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.no_show, no_show) || other.no_show == no_show)&&(identical(other.completion_rate, completion_rate) || other.completion_rate == completion_rate)&&(identical(other.unique_patients, unique_patients) || other.unique_patients == unique_patients)&&(identical(other.procedure_count, procedure_count) || other.procedure_count == procedure_count)&&(identical(other.avg_procedures_per_appointment, avg_procedures_per_appointment) || other.avg_procedures_per_appointment == avg_procedures_per_appointment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,doctor_id,doctor_name,total_appointments,completed,cancelled,no_show,completion_rate,unique_patients,procedure_count,avg_procedures_per_appointment);
}

@override
String toString() {
    return 'DoctorStatModel(doctor_id: $doctor_id, doctor_name: $doctor_name, total_appointments: $total_appointments, completed: $completed, cancelled: $cancelled, no_show: $no_show, completion_rate: $completion_rate, unique_patients: $unique_patients, procedure_count: $procedure_count, avg_procedures_per_appointment: $avg_procedures_per_appointment)';
}


}

/// @nodoc
abstract mixin class _$DoctorStatModelCopyWith<$Res> implements $DoctorStatModelCopyWith<$Res> {
  factory _$DoctorStatModelCopyWith(_DoctorStatModel value, $Res Function(_DoctorStatModel) _then) = __$DoctorStatModelCopyWithImpl;
@override @useResult
$Res call({
 int doctor_id, String? doctor_name, int total_appointments, int completed, int cancelled, int no_show, num completion_rate, int unique_patients, int procedure_count, num avg_procedures_per_appointment
});




}
/// @nodoc
class __$DoctorStatModelCopyWithImpl<$Res>
    implements _$DoctorStatModelCopyWith<$Res> {
  __$DoctorStatModelCopyWithImpl(this._self, this._then);

  final _DoctorStatModel _self;
  final $Res Function(_DoctorStatModel) _then;

/// Create a copy of DoctorStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctor_id = null,Object? doctor_name = freezed,Object? total_appointments = null,Object? completed = null,Object? cancelled = null,Object? no_show = null,Object? completion_rate = null,Object? unique_patients = null,Object? procedure_count = null,Object? avg_procedures_per_appointment = null,}) {
  return _then(_DoctorStatModel(
doctor_id: null == doctor_id ? _self.doctor_id : doctor_id // ignore: cast_nullable_to_non_nullable
as int,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,no_show: null == no_show ? _self.no_show : no_show // ignore: cast_nullable_to_non_nullable
as int,completion_rate: null == completion_rate ? _self.completion_rate : completion_rate // ignore: cast_nullable_to_non_nullable
as num,unique_patients: null == unique_patients ? _self.unique_patients : unique_patients // ignore: cast_nullable_to_non_nullable
as int,procedure_count: null == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int,avg_procedures_per_appointment: null == avg_procedures_per_appointment ? _self.avg_procedures_per_appointment : avg_procedures_per_appointment // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
