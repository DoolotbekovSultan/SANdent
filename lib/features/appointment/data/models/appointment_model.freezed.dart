// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel {

 int get id; int get patient; PatientModel? get patient_detail; int get doctor; Map<String, dynamic>? get doctor_detail; int? get clinic; Map<String, dynamic>? get clinic_detail; String get date_time; int? get duration; String? get end_time; String get status; String? get status_display; String? get notes; int? get created_by; String? get created_at; String? get updated_at; String? get sync_status; String? get device_id; List<StatusHistoryModel>? get status_history;
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<AppointmentModel> get copyWith => _$AppointmentModelCopyWithImpl<AppointmentModel>(this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppointmentModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&(identical(other.patient_detail, _this.patient_detail) || other.patient_detail == _this.patient_detail)&&(identical(other.doctor, _this.doctor) || other.doctor == _this.doctor)&&const DeepCollectionEquality().equals(other.doctor_detail, _this.doctor_detail)&&(identical(other.clinic, _this.clinic) || other.clinic == _this.clinic)&&const DeepCollectionEquality().equals(other.clinic_detail, _this.clinic_detail)&&(identical(other.date_time, _this.date_time) || other.date_time == _this.date_time)&&(identical(other.duration, _this.duration) || other.duration == _this.duration)&&(identical(other.end_time, _this.end_time) || other.end_time == _this.end_time)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.status_display, _this.status_display) || other.status_display == _this.status_display)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.created_by, _this.created_by) || other.created_by == _this.created_by)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at)&&(identical(other.sync_status, _this.sync_status) || other.sync_status == _this.sync_status)&&(identical(other.device_id, _this.device_id) || other.device_id == _this.device_id)&&const DeepCollectionEquality().equals(other.status_history, _this.status_history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppointmentModel;
  return Object.hashAll([runtimeType,_this.id,_this.patient,_this.patient_detail,_this.doctor,const DeepCollectionEquality().hash(_this.doctor_detail),_this.clinic,const DeepCollectionEquality().hash(_this.clinic_detail),_this.date_time,_this.duration,_this.end_time,_this.status,_this.status_display,_this.notes,_this.created_by,_this.created_at,_this.updated_at,_this.sync_status,_this.device_id,const DeepCollectionEquality().hash(_this.status_history)]);
}

@override
String toString() {
  final _this = this as AppointmentModel;
  return 'AppointmentModel(id: ${_this.id}, patient: ${_this.patient}, patient_detail: ${_this.patient_detail}, doctor: ${_this.doctor}, doctor_detail: ${_this.doctor_detail}, clinic: ${_this.clinic}, clinic_detail: ${_this.clinic_detail}, date_time: ${_this.date_time}, duration: ${_this.duration}, end_time: ${_this.end_time}, status: ${_this.status}, status_display: ${_this.status_display}, notes: ${_this.notes}, created_by: ${_this.created_by}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at}, sync_status: ${_this.sync_status}, device_id: ${_this.device_id}, status_history: ${_this.status_history})';
}


}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res>  {
  factory $AppointmentModelCopyWith(AppointmentModel value, $Res Function(AppointmentModel) _then) = _$AppointmentModelCopyWithImpl;
@useResult
$Res call({
 int id, int patient, PatientModel? patient_detail, int doctor, Map<String, dynamic>? doctor_detail, int? clinic, Map<String, dynamic>? clinic_detail, String date_time, int? duration, String? end_time, String status, String? status_display, String? notes, int? created_by, String? created_at, String? updated_at, String? sync_status, String? device_id, List<StatusHistoryModel>? status_history
});


$PatientModelCopyWith<$Res>? get patient_detail;

}
/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patient = null,Object? patient_detail = freezed,Object? doctor = null,Object? doctor_detail = freezed,Object? clinic = freezed,Object? clinic_detail = freezed,Object? date_time = null,Object? duration = freezed,Object? end_time = freezed,Object? status = null,Object? status_display = freezed,Object? notes = freezed,Object? created_by = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? sync_status = freezed,Object? device_id = freezed,Object? status_history = freezed,}) {
  return _then(AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,patient_detail: freezed == patient_detail ? _self.patient_detail : patient_detail // ignore: cast_nullable_to_non_nullable
as PatientModel?,doctor: null == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as int,doctor_detail: freezed == doctor_detail ? _self.doctor_detail : doctor_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as int?,clinic_detail: freezed == clinic_detail ? _self.clinic_detail : clinic_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,date_time: null == date_time ? _self.date_time : date_time // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,status_display: freezed == status_display ? _self.status_display : status_display // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,created_by: freezed == created_by ? _self.created_by : created_by // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,sync_status: freezed == sync_status ? _self.sync_status : sync_status // ignore: cast_nullable_to_non_nullable
as String?,device_id: freezed == device_id ? _self.device_id : device_id // ignore: cast_nullable_to_non_nullable
as String?,status_history: freezed == status_history ? _self.status_history : status_history // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryModel>?,
  ));
}
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res>? get patient_detail {
    if (_self.patient_detail == null) {
    return null;
  }

  return $PatientModelCopyWith<$Res>(_self.patient_detail!, (value) {
    return _then(_self.copyWith(patient_detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentModel].
extension AppointmentModelPatterns on AppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int patient,  PatientModel? patient_detail,  int doctor,  Map<String, dynamic>? doctor_detail,  int? clinic,  Map<String, dynamic>? clinic_detail,  String date_time,  int? duration,  String? end_time,  String status,  String? status_display,  String? notes,  int? created_by,  String? created_at,  String? updated_at,  String? sync_status,  String? device_id,  List<StatusHistoryModel>? status_history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.patient,_that.patient_detail,_that.doctor,_that.doctor_detail,_that.clinic,_that.clinic_detail,_that.date_time,_that.duration,_that.end_time,_that.status,_that.status_display,_that.notes,_that.created_by,_that.created_at,_that.updated_at,_that.sync_status,_that.device_id,_that.status_history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int patient,  PatientModel? patient_detail,  int doctor,  Map<String, dynamic>? doctor_detail,  int? clinic,  Map<String, dynamic>? clinic_detail,  String date_time,  int? duration,  String? end_time,  String status,  String? status_display,  String? notes,  int? created_by,  String? created_at,  String? updated_at,  String? sync_status,  String? device_id,  List<StatusHistoryModel>? status_history)  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel():
return $default(_that.id,_that.patient,_that.patient_detail,_that.doctor,_that.doctor_detail,_that.clinic,_that.clinic_detail,_that.date_time,_that.duration,_that.end_time,_that.status,_that.status_display,_that.notes,_that.created_by,_that.created_at,_that.updated_at,_that.sync_status,_that.device_id,_that.status_history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int patient,  PatientModel? patient_detail,  int doctor,  Map<String, dynamic>? doctor_detail,  int? clinic,  Map<String, dynamic>? clinic_detail,  String date_time,  int? duration,  String? end_time,  String status,  String? status_display,  String? notes,  int? created_by,  String? created_at,  String? updated_at,  String? sync_status,  String? device_id,  List<StatusHistoryModel>? status_history)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.patient,_that.patient_detail,_that.doctor,_that.doctor_detail,_that.clinic,_that.clinic_detail,_that.date_time,_that.duration,_that.end_time,_that.status,_that.status_display,_that.notes,_that.created_by,_that.created_at,_that.updated_at,_that.sync_status,_that.device_id,_that.status_history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentModel implements AppointmentModel {
  const _AppointmentModel({required this.id, required this.patient, required this.patient_detail, required this.doctor, required  Map<String, dynamic>? doctor_detail, required this.clinic, required  Map<String, dynamic>? clinic_detail, required this.date_time, required this.duration, required this.end_time, required this.status, required this.status_display, required this.notes, required this.created_by, required this.created_at, required this.updated_at, required this.sync_status, required this.device_id, required  List<StatusHistoryModel>? status_history}): _doctor_detail = doctor_detail,_clinic_detail = clinic_detail,_status_history = status_history;
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);

@override final  int id;
@override final  int patient;
@override final  PatientModel? patient_detail;
@override final  int doctor;
 final  Map<String, dynamic>? _doctor_detail;
@override Map<String, dynamic>? get doctor_detail {
  final value = _doctor_detail;
  if (value == null) return null;
  if (_doctor_detail is EqualUnmodifiableMapView) return _doctor_detail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? clinic;
 final  Map<String, dynamic>? _clinic_detail;
@override Map<String, dynamic>? get clinic_detail {
  final value = _clinic_detail;
  if (value == null) return null;
  if (_clinic_detail is EqualUnmodifiableMapView) return _clinic_detail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String date_time;
@override final  int? duration;
@override final  String? end_time;
@override final  String status;
@override final  String? status_display;
@override final  String? notes;
@override final  int? created_by;
@override final  String? created_at;
@override final  String? updated_at;
@override final  String? sync_status;
@override final  String? device_id;
 final  List<StatusHistoryModel>? _status_history;
@override List<StatusHistoryModel>? get status_history {
  final value = _status_history;
  if (value == null) return null;
  if (_status_history is EqualUnmodifiableListView) return _status_history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentModelCopyWith<_AppointmentModel> get copyWith => __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.patient_detail, patient_detail) || other.patient_detail == patient_detail)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&const DeepCollectionEquality().equals(other.doctor_detail, _doctor_detail)&&(identical(other.clinic, clinic) || other.clinic == clinic)&&const DeepCollectionEquality().equals(other.clinic_detail, _clinic_detail)&&(identical(other.date_time, date_time) || other.date_time == date_time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.status, status) || other.status == status)&&(identical(other.status_display, status_display) || other.status_display == status_display)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.created_by, created_by) || other.created_by == created_by)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.sync_status, sync_status) || other.sync_status == sync_status)&&(identical(other.device_id, device_id) || other.device_id == device_id)&&const DeepCollectionEquality().equals(other.status_history, _status_history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,patient,patient_detail,doctor,const DeepCollectionEquality().hash(_doctor_detail),clinic,const DeepCollectionEquality().hash(_clinic_detail),date_time,duration,end_time,status,status_display,notes,created_by,created_at,updated_at,sync_status,device_id,const DeepCollectionEquality().hash(_status_history)]);
}

@override
String toString() {
    return 'AppointmentModel(id: $id, patient: $patient, patient_detail: $patient_detail, doctor: $doctor, doctor_detail: $doctor_detail, clinic: $clinic, clinic_detail: $clinic_detail, date_time: $date_time, duration: $duration, end_time: $end_time, status: $status, status_display: $status_display, notes: $notes, created_by: $created_by, created_at: $created_at, updated_at: $updated_at, sync_status: $sync_status, device_id: $device_id, status_history: $status_history)';
}


}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res> implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(_AppointmentModel value, $Res Function(_AppointmentModel) _then) = __$AppointmentModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int patient, PatientModel? patient_detail, int doctor, Map<String, dynamic>? doctor_detail, int? clinic, Map<String, dynamic>? clinic_detail, String date_time, int? duration, String? end_time, String status, String? status_display, String? notes, int? created_by, String? created_at, String? updated_at, String? sync_status, String? device_id, List<StatusHistoryModel>? status_history
});


@override $PatientModelCopyWith<$Res>? get patient_detail;

}
/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patient = null,Object? patient_detail = freezed,Object? doctor = null,Object? doctor_detail = freezed,Object? clinic = freezed,Object? clinic_detail = freezed,Object? date_time = null,Object? duration = freezed,Object? end_time = freezed,Object? status = null,Object? status_display = freezed,Object? notes = freezed,Object? created_by = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? sync_status = freezed,Object? device_id = freezed,Object? status_history = freezed,}) {
  return _then(_AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,patient_detail: freezed == patient_detail ? _self.patient_detail : patient_detail // ignore: cast_nullable_to_non_nullable
as PatientModel?,doctor: null == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as int,doctor_detail: freezed == doctor_detail ? _self._doctor_detail : doctor_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,clinic: freezed == clinic ? _self.clinic : clinic // ignore: cast_nullable_to_non_nullable
as int?,clinic_detail: freezed == clinic_detail ? _self._clinic_detail : clinic_detail // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,date_time: null == date_time ? _self.date_time : date_time // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,status_display: freezed == status_display ? _self.status_display : status_display // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,created_by: freezed == created_by ? _self.created_by : created_by // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,sync_status: freezed == sync_status ? _self.sync_status : sync_status // ignore: cast_nullable_to_non_nullable
as String?,device_id: freezed == device_id ? _self.device_id : device_id // ignore: cast_nullable_to_non_nullable
as String?,status_history: freezed == status_history ? _self._status_history : status_history // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryModel>?,
  ));
}

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res>? get patient_detail {
    if (_self.patient_detail == null) {
    return null;
  }

  return $PatientModelCopyWith<$Res>(_self.patient_detail!, (value) {
    return _then(_self.copyWith(patient_detail: value));
  });
}
}

// dart format on
