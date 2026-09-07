// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentEntity {

 int get id; int get patientId; PatientEntity? get patient; int get doctorId; String get doctorName; int? get clinicId; String? get clinicName; DateTime get dateTime; int? get duration; String? get endTime; String get status; String? get statusDisplay; String? get notes; int? get createdBy; String? get createdAt; String? get updatedAt; String? get syncStatus; String? get deviceId; List<StatusHistoryEntry> get statusHistory;
/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentEntityCopyWith<AppointmentEntity> get copyWith => _$AppointmentEntityCopyWithImpl<AppointmentEntity>(this as AppointmentEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppointmentEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.patientId, _this.patientId) || other.patientId == _this.patientId)&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&(identical(other.doctorId, _this.doctorId) || other.doctorId == _this.doctorId)&&(identical(other.doctorName, _this.doctorName) || other.doctorName == _this.doctorName)&&(identical(other.clinicId, _this.clinicId) || other.clinicId == _this.clinicId)&&(identical(other.clinicName, _this.clinicName) || other.clinicName == _this.clinicName)&&(identical(other.dateTime, _this.dateTime) || other.dateTime == _this.dateTime)&&(identical(other.duration, _this.duration) || other.duration == _this.duration)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusDisplay, _this.statusDisplay) || other.statusDisplay == _this.statusDisplay)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.syncStatus, _this.syncStatus) || other.syncStatus == _this.syncStatus)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&const DeepCollectionEquality().equals(other.statusHistory, _this.statusHistory));
}


@override
int get hashCode {
  final _this = this as AppointmentEntity;
  return Object.hashAll([runtimeType,_this.id,_this.patientId,_this.patient,_this.doctorId,_this.doctorName,_this.clinicId,_this.clinicName,_this.dateTime,_this.duration,_this.endTime,_this.status,_this.statusDisplay,_this.notes,_this.createdBy,_this.createdAt,_this.updatedAt,_this.syncStatus,_this.deviceId,const DeepCollectionEquality().hash(_this.statusHistory)]);
}

@override
String toString() {
  final _this = this as AppointmentEntity;
  return 'AppointmentEntity(id: ${_this.id}, patientId: ${_this.patientId}, patient: ${_this.patient}, doctorId: ${_this.doctorId}, doctorName: ${_this.doctorName}, clinicId: ${_this.clinicId}, clinicName: ${_this.clinicName}, dateTime: ${_this.dateTime}, duration: ${_this.duration}, endTime: ${_this.endTime}, status: ${_this.status}, statusDisplay: ${_this.statusDisplay}, notes: ${_this.notes}, createdBy: ${_this.createdBy}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, syncStatus: ${_this.syncStatus}, deviceId: ${_this.deviceId}, statusHistory: ${_this.statusHistory})';
}


}

/// @nodoc
abstract mixin class $AppointmentEntityCopyWith<$Res>  {
  factory $AppointmentEntityCopyWith(AppointmentEntity value, $Res Function(AppointmentEntity) _then) = _$AppointmentEntityCopyWithImpl;
@useResult
$Res call({
 int id, int patientId, PatientEntity? patient, int doctorId, String doctorName, int? clinicId, String? clinicName, DateTime dateTime, int? duration, String? endTime, String status, String? statusDisplay, String? notes, int? createdBy, String? createdAt, String? updatedAt, String? syncStatus, String? deviceId, List<StatusHistoryEntry> statusHistory
});


$PatientEntityCopyWith<$Res>? get patient;

}
/// @nodoc
class _$AppointmentEntityCopyWithImpl<$Res>
    implements $AppointmentEntityCopyWith<$Res> {
  _$AppointmentEntityCopyWithImpl(this._self, this._then);

  final AppointmentEntity _self;
  final $Res Function(AppointmentEntity) _then;

/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patient = freezed,Object? doctorId = null,Object? doctorName = null,Object? clinicId = freezed,Object? clinicName = freezed,Object? dateTime = null,Object? duration = freezed,Object? endTime = freezed,Object? status = null,Object? statusDisplay = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncStatus = freezed,Object? deviceId = freezed,Object? statusHistory = null,}) {
  return _then(AppointmentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as int,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientEntity?,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,clinicId: freezed == clinicId ? _self.clinicId : clinicId // ignore: cast_nullable_to_non_nullable
as int?,clinicName: freezed == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,syncStatus: freezed == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,statusHistory: null == statusHistory ? _self.statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryEntry>,
  ));
}
/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientEntityCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientEntityCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentEntity].
extension AppointmentEntityPatterns on AppointmentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int patientId,  PatientEntity? patient,  int doctorId,  String doctorName,  int? clinicId,  String? clinicName,  DateTime dateTime,  int? duration,  String? endTime,  String status,  String? statusDisplay,  String? notes,  int? createdBy,  String? createdAt,  String? updatedAt,  String? syncStatus,  String? deviceId,  List<StatusHistoryEntry> statusHistory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patient,_that.doctorId,_that.doctorName,_that.clinicId,_that.clinicName,_that.dateTime,_that.duration,_that.endTime,_that.status,_that.statusDisplay,_that.notes,_that.createdBy,_that.createdAt,_that.updatedAt,_that.syncStatus,_that.deviceId,_that.statusHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int patientId,  PatientEntity? patient,  int doctorId,  String doctorName,  int? clinicId,  String? clinicName,  DateTime dateTime,  int? duration,  String? endTime,  String status,  String? statusDisplay,  String? notes,  int? createdBy,  String? createdAt,  String? updatedAt,  String? syncStatus,  String? deviceId,  List<StatusHistoryEntry> statusHistory)  $default,) {final _that = this;
switch (_that) {
case _AppointmentEntity():
return $default(_that.id,_that.patientId,_that.patient,_that.doctorId,_that.doctorName,_that.clinicId,_that.clinicName,_that.dateTime,_that.duration,_that.endTime,_that.status,_that.statusDisplay,_that.notes,_that.createdBy,_that.createdAt,_that.updatedAt,_that.syncStatus,_that.deviceId,_that.statusHistory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int patientId,  PatientEntity? patient,  int doctorId,  String doctorName,  int? clinicId,  String? clinicName,  DateTime dateTime,  int? duration,  String? endTime,  String status,  String? statusDisplay,  String? notes,  int? createdBy,  String? createdAt,  String? updatedAt,  String? syncStatus,  String? deviceId,  List<StatusHistoryEntry> statusHistory)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patient,_that.doctorId,_that.doctorName,_that.clinicId,_that.clinicName,_that.dateTime,_that.duration,_that.endTime,_that.status,_that.statusDisplay,_that.notes,_that.createdBy,_that.createdAt,_that.updatedAt,_that.syncStatus,_that.deviceId,_that.statusHistory);case _:
  return null;

}
}

}

/// @nodoc


class _AppointmentEntity implements AppointmentEntity {
  const _AppointmentEntity({required this.id, required this.patientId, required this.patient, required this.doctorId, required this.doctorName, required this.clinicId, required this.clinicName, required this.dateTime, required this.duration, required this.endTime, required this.status, required this.statusDisplay, required this.notes, required this.createdBy, required this.createdAt, required this.updatedAt, required this.syncStatus, required this.deviceId, required  List<StatusHistoryEntry> statusHistory}): _statusHistory = statusHistory;
  

@override final  int id;
@override final  int patientId;
@override final  PatientEntity? patient;
@override final  int doctorId;
@override final  String doctorName;
@override final  int? clinicId;
@override final  String? clinicName;
@override final  DateTime dateTime;
@override final  int? duration;
@override final  String? endTime;
@override final  String status;
@override final  String? statusDisplay;
@override final  String? notes;
@override final  int? createdBy;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? syncStatus;
@override final  String? deviceId;
 final  List<StatusHistoryEntry> _statusHistory;
@override List<StatusHistoryEntry> get statusHistory {
  if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusHistory);
}


/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentEntityCopyWith<_AppointmentEntity> get copyWith => __$AppointmentEntityCopyWithImpl<_AppointmentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.clinicId, clinicId) || other.clinicId == clinicId)&&(identical(other.clinicName, clinicName) || other.clinicName == clinicName)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other.statusHistory, _statusHistory));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,patientId,patient,doctorId,doctorName,clinicId,clinicName,dateTime,duration,endTime,status,statusDisplay,notes,createdBy,createdAt,updatedAt,syncStatus,deviceId,const DeepCollectionEquality().hash(_statusHistory)]);
}

@override
String toString() {
    return 'AppointmentEntity(id: $id, patientId: $patientId, patient: $patient, doctorId: $doctorId, doctorName: $doctorName, clinicId: $clinicId, clinicName: $clinicName, dateTime: $dateTime, duration: $duration, endTime: $endTime, status: $status, statusDisplay: $statusDisplay, notes: $notes, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, syncStatus: $syncStatus, deviceId: $deviceId, statusHistory: $statusHistory)';
}


}

/// @nodoc
abstract mixin class _$AppointmentEntityCopyWith<$Res> implements $AppointmentEntityCopyWith<$Res> {
  factory _$AppointmentEntityCopyWith(_AppointmentEntity value, $Res Function(_AppointmentEntity) _then) = __$AppointmentEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int patientId, PatientEntity? patient, int doctorId, String doctorName, int? clinicId, String? clinicName, DateTime dateTime, int? duration, String? endTime, String status, String? statusDisplay, String? notes, int? createdBy, String? createdAt, String? updatedAt, String? syncStatus, String? deviceId, List<StatusHistoryEntry> statusHistory
});


@override $PatientEntityCopyWith<$Res>? get patient;

}
/// @nodoc
class __$AppointmentEntityCopyWithImpl<$Res>
    implements _$AppointmentEntityCopyWith<$Res> {
  __$AppointmentEntityCopyWithImpl(this._self, this._then);

  final _AppointmentEntity _self;
  final $Res Function(_AppointmentEntity) _then;

/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patient = freezed,Object? doctorId = null,Object? doctorName = null,Object? clinicId = freezed,Object? clinicName = freezed,Object? dateTime = null,Object? duration = freezed,Object? endTime = freezed,Object? status = null,Object? statusDisplay = freezed,Object? notes = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncStatus = freezed,Object? deviceId = freezed,Object? statusHistory = null,}) {
  return _then(_AppointmentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as int,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientEntity?,doctorId: null == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int,doctorName: null == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String,clinicId: freezed == clinicId ? _self.clinicId : clinicId // ignore: cast_nullable_to_non_nullable
as int?,clinicName: freezed == clinicName ? _self.clinicName : clinicName // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,syncStatus: freezed == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,statusHistory: null == statusHistory ? _self._statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<StatusHistoryEntry>,
  ));
}

/// Create a copy of AppointmentEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientEntityCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientEntityCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}

// dart format on
