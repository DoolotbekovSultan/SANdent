// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicalRecordDetailEntity {

 int get id; int get appointmentId; AppointmentEntity? get appointment; String get diagnosis; String? get recommendations; String? get comments; List<RecordProcedureEntry> get procedures; List<RecordMaterialEntry> get materials; int? get patientId; String? get patientName; int? get doctorId; String? get doctorName; String? get appointmentDate; bool? get hasProcedures; bool? get hasMaterials; String? get createdAt; String? get updatedAt;
/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalRecordDetailEntityCopyWith<MedicalRecordDetailEntity> get copyWith => _$MedicalRecordDetailEntityCopyWithImpl<MedicalRecordDetailEntity>(this as MedicalRecordDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MedicalRecordDetailEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalRecordDetailEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.appointmentId, _this.appointmentId) || other.appointmentId == _this.appointmentId)&&(identical(other.appointment, _this.appointment) || other.appointment == _this.appointment)&&(identical(other.diagnosis, _this.diagnosis) || other.diagnosis == _this.diagnosis)&&(identical(other.recommendations, _this.recommendations) || other.recommendations == _this.recommendations)&&(identical(other.comments, _this.comments) || other.comments == _this.comments)&&const DeepCollectionEquality().equals(other.procedures, _this.procedures)&&const DeepCollectionEquality().equals(other.materials, _this.materials)&&(identical(other.patientId, _this.patientId) || other.patientId == _this.patientId)&&(identical(other.patientName, _this.patientName) || other.patientName == _this.patientName)&&(identical(other.doctorId, _this.doctorId) || other.doctorId == _this.doctorId)&&(identical(other.doctorName, _this.doctorName) || other.doctorName == _this.doctorName)&&(identical(other.appointmentDate, _this.appointmentDate) || other.appointmentDate == _this.appointmentDate)&&(identical(other.hasProcedures, _this.hasProcedures) || other.hasProcedures == _this.hasProcedures)&&(identical(other.hasMaterials, _this.hasMaterials) || other.hasMaterials == _this.hasMaterials)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as MedicalRecordDetailEntity;
  return Object.hash(runtimeType,_this.id,_this.appointmentId,_this.appointment,_this.diagnosis,_this.recommendations,_this.comments,const DeepCollectionEquality().hash(_this.procedures),const DeepCollectionEquality().hash(_this.materials),_this.patientId,_this.patientName,_this.doctorId,_this.doctorName,_this.appointmentDate,_this.hasProcedures,_this.hasMaterials,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as MedicalRecordDetailEntity;
  return 'MedicalRecordDetailEntity(id: ${_this.id}, appointmentId: ${_this.appointmentId}, appointment: ${_this.appointment}, diagnosis: ${_this.diagnosis}, recommendations: ${_this.recommendations}, comments: ${_this.comments}, procedures: ${_this.procedures}, materials: ${_this.materials}, patientId: ${_this.patientId}, patientName: ${_this.patientName}, doctorId: ${_this.doctorId}, doctorName: ${_this.doctorName}, appointmentDate: ${_this.appointmentDate}, hasProcedures: ${_this.hasProcedures}, hasMaterials: ${_this.hasMaterials}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $MedicalRecordDetailEntityCopyWith<$Res>  {
  factory $MedicalRecordDetailEntityCopyWith(MedicalRecordDetailEntity value, $Res Function(MedicalRecordDetailEntity) _then) = _$MedicalRecordDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, int appointmentId, AppointmentEntity? appointment, String diagnosis, String? recommendations, String? comments, List<RecordProcedureEntry> procedures, List<RecordMaterialEntry> materials, int? patientId, String? patientName, int? doctorId, String? doctorName, String? appointmentDate, bool? hasProcedures, bool? hasMaterials, String? createdAt, String? updatedAt
});


$AppointmentEntityCopyWith<$Res>? get appointment;

}
/// @nodoc
class _$MedicalRecordDetailEntityCopyWithImpl<$Res>
    implements $MedicalRecordDetailEntityCopyWith<$Res> {
  _$MedicalRecordDetailEntityCopyWithImpl(this._self, this._then);

  final MedicalRecordDetailEntity _self;
  final $Res Function(MedicalRecordDetailEntity) _then;

/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appointmentId = null,Object? appointment = freezed,Object? diagnosis = null,Object? recommendations = freezed,Object? comments = freezed,Object? procedures = null,Object? materials = null,Object? patientId = freezed,Object? patientName = freezed,Object? doctorId = freezed,Object? doctorName = freezed,Object? appointmentDate = freezed,Object? hasProcedures = freezed,Object? hasMaterials = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(MedicalRecordDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,appointment: freezed == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as AppointmentEntity?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,recommendations: freezed == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,procedures: null == procedures ? _self.procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<RecordProcedureEntry>,materials: null == materials ? _self.materials : materials // ignore: cast_nullable_to_non_nullable
as List<RecordMaterialEntry>,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as int?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorId: freezed == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,appointmentDate: freezed == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String?,hasProcedures: freezed == hasProcedures ? _self.hasProcedures : hasProcedures // ignore: cast_nullable_to_non_nullable
as bool?,hasMaterials: freezed == hasMaterials ? _self.hasMaterials : hasMaterials // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentEntityCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
    return null;
  }

  return $AppointmentEntityCopyWith<$Res>(_self.appointment!, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}


/// Adds pattern-matching-related methods to [MedicalRecordDetailEntity].
extension MedicalRecordDetailEntityPatterns on MedicalRecordDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalRecordDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalRecordDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalRecordDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int appointmentId,  AppointmentEntity? appointment,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureEntry> procedures,  List<RecordMaterialEntry> materials,  int? patientId,  String? patientName,  int? doctorId,  String? doctorName,  String? appointmentDate,  bool? hasProcedures,  bool? hasMaterials,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity() when $default != null:
return $default(_that.id,_that.appointmentId,_that.appointment,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.appointmentDate,_that.hasProcedures,_that.hasMaterials,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int appointmentId,  AppointmentEntity? appointment,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureEntry> procedures,  List<RecordMaterialEntry> materials,  int? patientId,  String? patientName,  int? doctorId,  String? doctorName,  String? appointmentDate,  bool? hasProcedures,  bool? hasMaterials,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity():
return $default(_that.id,_that.appointmentId,_that.appointment,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.appointmentDate,_that.hasProcedures,_that.hasMaterials,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int appointmentId,  AppointmentEntity? appointment,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureEntry> procedures,  List<RecordMaterialEntry> materials,  int? patientId,  String? patientName,  int? doctorId,  String? doctorName,  String? appointmentDate,  bool? hasProcedures,  bool? hasMaterials,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordDetailEntity() when $default != null:
return $default(_that.id,_that.appointmentId,_that.appointment,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patientId,_that.patientName,_that.doctorId,_that.doctorName,_that.appointmentDate,_that.hasProcedures,_that.hasMaterials,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _MedicalRecordDetailEntity implements MedicalRecordDetailEntity {
  const _MedicalRecordDetailEntity({required this.id, required this.appointmentId, required this.appointment, required this.diagnosis, required this.recommendations, required this.comments, required  List<RecordProcedureEntry> procedures, required  List<RecordMaterialEntry> materials, required this.patientId, required this.patientName, required this.doctorId, required this.doctorName, required this.appointmentDate, required this.hasProcedures, required this.hasMaterials, required this.createdAt, required this.updatedAt}): _procedures = procedures,_materials = materials;
  

@override final  int id;
@override final  int appointmentId;
@override final  AppointmentEntity? appointment;
@override final  String diagnosis;
@override final  String? recommendations;
@override final  String? comments;
 final  List<RecordProcedureEntry> _procedures;
@override List<RecordProcedureEntry> get procedures {
  if (_procedures is EqualUnmodifiableListView) return _procedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_procedures);
}

 final  List<RecordMaterialEntry> _materials;
@override List<RecordMaterialEntry> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  int? patientId;
@override final  String? patientName;
@override final  int? doctorId;
@override final  String? doctorName;
@override final  String? appointmentDate;
@override final  bool? hasProcedures;
@override final  bool? hasMaterials;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalRecordDetailEntityCopyWith<_MedicalRecordDetailEntity> get copyWith => __$MedicalRecordDetailEntityCopyWithImpl<_MedicalRecordDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalRecordDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId)&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.recommendations, recommendations) || other.recommendations == recommendations)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other.procedures, _procedures)&&const DeepCollectionEquality().equals(other.materials, _materials)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorId, doctorId) || other.doctorId == doctorId)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.hasProcedures, hasProcedures) || other.hasProcedures == hasProcedures)&&(identical(other.hasMaterials, hasMaterials) || other.hasMaterials == hasMaterials)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,appointmentId,appointment,diagnosis,recommendations,comments,const DeepCollectionEquality().hash(_procedures),const DeepCollectionEquality().hash(_materials),patientId,patientName,doctorId,doctorName,appointmentDate,hasProcedures,hasMaterials,createdAt,updatedAt);
}

@override
String toString() {
    return 'MedicalRecordDetailEntity(id: $id, appointmentId: $appointmentId, appointment: $appointment, diagnosis: $diagnosis, recommendations: $recommendations, comments: $comments, procedures: $procedures, materials: $materials, patientId: $patientId, patientName: $patientName, doctorId: $doctorId, doctorName: $doctorName, appointmentDate: $appointmentDate, hasProcedures: $hasProcedures, hasMaterials: $hasMaterials, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MedicalRecordDetailEntityCopyWith<$Res> implements $MedicalRecordDetailEntityCopyWith<$Res> {
  factory _$MedicalRecordDetailEntityCopyWith(_MedicalRecordDetailEntity value, $Res Function(_MedicalRecordDetailEntity) _then) = __$MedicalRecordDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int appointmentId, AppointmentEntity? appointment, String diagnosis, String? recommendations, String? comments, List<RecordProcedureEntry> procedures, List<RecordMaterialEntry> materials, int? patientId, String? patientName, int? doctorId, String? doctorName, String? appointmentDate, bool? hasProcedures, bool? hasMaterials, String? createdAt, String? updatedAt
});


@override $AppointmentEntityCopyWith<$Res>? get appointment;

}
/// @nodoc
class __$MedicalRecordDetailEntityCopyWithImpl<$Res>
    implements _$MedicalRecordDetailEntityCopyWith<$Res> {
  __$MedicalRecordDetailEntityCopyWithImpl(this._self, this._then);

  final _MedicalRecordDetailEntity _self;
  final $Res Function(_MedicalRecordDetailEntity) _then;

/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appointmentId = null,Object? appointment = freezed,Object? diagnosis = null,Object? recommendations = freezed,Object? comments = freezed,Object? procedures = null,Object? materials = null,Object? patientId = freezed,Object? patientName = freezed,Object? doctorId = freezed,Object? doctorName = freezed,Object? appointmentDate = freezed,Object? hasProcedures = freezed,Object? hasMaterials = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MedicalRecordDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,appointment: freezed == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as AppointmentEntity?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,recommendations: freezed == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,procedures: null == procedures ? _self._procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<RecordProcedureEntry>,materials: null == materials ? _self._materials : materials // ignore: cast_nullable_to_non_nullable
as List<RecordMaterialEntry>,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as int?,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorId: freezed == doctorId ? _self.doctorId : doctorId // ignore: cast_nullable_to_non_nullable
as int?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,appointmentDate: freezed == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String?,hasProcedures: freezed == hasProcedures ? _self.hasProcedures : hasProcedures // ignore: cast_nullable_to_non_nullable
as bool?,hasMaterials: freezed == hasMaterials ? _self.hasMaterials : hasMaterials // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MedicalRecordDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentEntityCopyWith<$Res>? get appointment {
    if (_self.appointment == null) {
    return null;
  }

  return $AppointmentEntityCopyWith<$Res>(_self.appointment!, (value) {
    return _then(_self.copyWith(appointment: value));
  });
}
}

/// @nodoc
mixin _$RecordProcedureEntry {

 int? get id; int? get procedureId; ProcedureEntity? get procedure; String? get procedureName; String? get notes; String? get createdAt;
/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordProcedureEntryCopyWith<RecordProcedureEntry> get copyWith => _$RecordProcedureEntryCopyWithImpl<RecordProcedureEntry>(this as RecordProcedureEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecordProcedureEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordProcedureEntry&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.procedureId, _this.procedureId) || other.procedureId == _this.procedureId)&&(identical(other.procedure, _this.procedure) || other.procedure == _this.procedure)&&(identical(other.procedureName, _this.procedureName) || other.procedureName == _this.procedureName)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as RecordProcedureEntry;
  return Object.hash(runtimeType,_this.id,_this.procedureId,_this.procedure,_this.procedureName,_this.notes,_this.createdAt);
}

@override
String toString() {
  final _this = this as RecordProcedureEntry;
  return 'RecordProcedureEntry(id: ${_this.id}, procedureId: ${_this.procedureId}, procedure: ${_this.procedure}, procedureName: ${_this.procedureName}, notes: ${_this.notes}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $RecordProcedureEntryCopyWith<$Res>  {
  factory $RecordProcedureEntryCopyWith(RecordProcedureEntry value, $Res Function(RecordProcedureEntry) _then) = _$RecordProcedureEntryCopyWithImpl;
@useResult
$Res call({
 int? id, int? procedureId, ProcedureEntity? procedure, String? procedureName, String? notes, String? createdAt
});


$ProcedureEntityCopyWith<$Res>? get procedure;

}
/// @nodoc
class _$RecordProcedureEntryCopyWithImpl<$Res>
    implements $RecordProcedureEntryCopyWith<$Res> {
  _$RecordProcedureEntryCopyWithImpl(this._self, this._then);

  final RecordProcedureEntry _self;
  final $Res Function(RecordProcedureEntry) _then;

/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? procedureId = freezed,Object? procedure = freezed,Object? procedureName = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(RecordProcedureEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,procedureId: freezed == procedureId ? _self.procedureId : procedureId // ignore: cast_nullable_to_non_nullable
as int?,procedure: freezed == procedure ? _self.procedure : procedure // ignore: cast_nullable_to_non_nullable
as ProcedureEntity?,procedureName: freezed == procedureName ? _self.procedureName : procedureName // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureEntityCopyWith<$Res>? get procedure {
    if (_self.procedure == null) {
    return null;
  }

  return $ProcedureEntityCopyWith<$Res>(_self.procedure!, (value) {
    return _then(_self.copyWith(procedure: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordProcedureEntry].
extension RecordProcedureEntryPatterns on RecordProcedureEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordProcedureEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordProcedureEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordProcedureEntry value)  $default,){
final _that = this;
switch (_that) {
case _RecordProcedureEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordProcedureEntry value)?  $default,){
final _that = this;
switch (_that) {
case _RecordProcedureEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? procedureId,  ProcedureEntity? procedure,  String? procedureName,  String? notes,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordProcedureEntry() when $default != null:
return $default(_that.id,_that.procedureId,_that.procedure,_that.procedureName,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? procedureId,  ProcedureEntity? procedure,  String? procedureName,  String? notes,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordProcedureEntry():
return $default(_that.id,_that.procedureId,_that.procedure,_that.procedureName,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? procedureId,  ProcedureEntity? procedure,  String? procedureName,  String? notes,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordProcedureEntry() when $default != null:
return $default(_that.id,_that.procedureId,_that.procedure,_that.procedureName,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _RecordProcedureEntry implements RecordProcedureEntry {
  const _RecordProcedureEntry({required this.id, required this.procedureId, required this.procedure, required this.procedureName, required this.notes, required this.createdAt});
  

@override final  int? id;
@override final  int? procedureId;
@override final  ProcedureEntity? procedure;
@override final  String? procedureName;
@override final  String? notes;
@override final  String? createdAt;

/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordProcedureEntryCopyWith<_RecordProcedureEntry> get copyWith => __$RecordProcedureEntryCopyWithImpl<_RecordProcedureEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordProcedureEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.procedureId, procedureId) || other.procedureId == procedureId)&&(identical(other.procedure, procedure) || other.procedure == procedure)&&(identical(other.procedureName, procedureName) || other.procedureName == procedureName)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,procedureId,procedure,procedureName,notes,createdAt);
}

@override
String toString() {
    return 'RecordProcedureEntry(id: $id, procedureId: $procedureId, procedure: $procedure, procedureName: $procedureName, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordProcedureEntryCopyWith<$Res> implements $RecordProcedureEntryCopyWith<$Res> {
  factory _$RecordProcedureEntryCopyWith(_RecordProcedureEntry value, $Res Function(_RecordProcedureEntry) _then) = __$RecordProcedureEntryCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? procedureId, ProcedureEntity? procedure, String? procedureName, String? notes, String? createdAt
});


@override $ProcedureEntityCopyWith<$Res>? get procedure;

}
/// @nodoc
class __$RecordProcedureEntryCopyWithImpl<$Res>
    implements _$RecordProcedureEntryCopyWith<$Res> {
  __$RecordProcedureEntryCopyWithImpl(this._self, this._then);

  final _RecordProcedureEntry _self;
  final $Res Function(_RecordProcedureEntry) _then;

/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? procedureId = freezed,Object? procedure = freezed,Object? procedureName = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_RecordProcedureEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,procedureId: freezed == procedureId ? _self.procedureId : procedureId // ignore: cast_nullable_to_non_nullable
as int?,procedure: freezed == procedure ? _self.procedure : procedure // ignore: cast_nullable_to_non_nullable
as ProcedureEntity?,procedureName: freezed == procedureName ? _self.procedureName : procedureName // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RecordProcedureEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureEntityCopyWith<$Res>? get procedure {
    if (_self.procedure == null) {
    return null;
  }

  return $ProcedureEntityCopyWith<$Res>(_self.procedure!, (value) {
    return _then(_self.copyWith(procedure: value));
  });
}
}

/// @nodoc
mixin _$RecordMaterialEntry {

 int? get id; int? get materialId; MaterialEntity? get material; String? get materialName; String? get materialUnit; int? get quantity; String? get createdAt;
/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordMaterialEntryCopyWith<RecordMaterialEntry> get copyWith => _$RecordMaterialEntryCopyWithImpl<RecordMaterialEntry>(this as RecordMaterialEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecordMaterialEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordMaterialEntry&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.materialId, _this.materialId) || other.materialId == _this.materialId)&&(identical(other.material, _this.material) || other.material == _this.material)&&(identical(other.materialName, _this.materialName) || other.materialName == _this.materialName)&&(identical(other.materialUnit, _this.materialUnit) || other.materialUnit == _this.materialUnit)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as RecordMaterialEntry;
  return Object.hash(runtimeType,_this.id,_this.materialId,_this.material,_this.materialName,_this.materialUnit,_this.quantity,_this.createdAt);
}

@override
String toString() {
  final _this = this as RecordMaterialEntry;
  return 'RecordMaterialEntry(id: ${_this.id}, materialId: ${_this.materialId}, material: ${_this.material}, materialName: ${_this.materialName}, materialUnit: ${_this.materialUnit}, quantity: ${_this.quantity}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $RecordMaterialEntryCopyWith<$Res>  {
  factory $RecordMaterialEntryCopyWith(RecordMaterialEntry value, $Res Function(RecordMaterialEntry) _then) = _$RecordMaterialEntryCopyWithImpl;
@useResult
$Res call({
 int? id, int? materialId, MaterialEntity? material, String? materialName, String? materialUnit, int? quantity, String? createdAt
});


$MaterialEntityCopyWith<$Res>? get material;

}
/// @nodoc
class _$RecordMaterialEntryCopyWithImpl<$Res>
    implements $RecordMaterialEntryCopyWith<$Res> {
  _$RecordMaterialEntryCopyWithImpl(this._self, this._then);

  final RecordMaterialEntry _self;
  final $Res Function(RecordMaterialEntry) _then;

/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? materialId = freezed,Object? material = freezed,Object? materialName = freezed,Object? materialUnit = freezed,Object? quantity = freezed,Object? createdAt = freezed,}) {
  return _then(RecordMaterialEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as MaterialEntity?,materialName: freezed == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String?,materialUnit: freezed == materialUnit ? _self.materialUnit : materialUnit // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialEntityCopyWith<$Res>? get material {
    if (_self.material == null) {
    return null;
  }

  return $MaterialEntityCopyWith<$Res>(_self.material!, (value) {
    return _then(_self.copyWith(material: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordMaterialEntry].
extension RecordMaterialEntryPatterns on RecordMaterialEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordMaterialEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordMaterialEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordMaterialEntry value)  $default,){
final _that = this;
switch (_that) {
case _RecordMaterialEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordMaterialEntry value)?  $default,){
final _that = this;
switch (_that) {
case _RecordMaterialEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? materialId,  MaterialEntity? material,  String? materialName,  String? materialUnit,  int? quantity,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordMaterialEntry() when $default != null:
return $default(_that.id,_that.materialId,_that.material,_that.materialName,_that.materialUnit,_that.quantity,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? materialId,  MaterialEntity? material,  String? materialName,  String? materialUnit,  int? quantity,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordMaterialEntry():
return $default(_that.id,_that.materialId,_that.material,_that.materialName,_that.materialUnit,_that.quantity,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? materialId,  MaterialEntity? material,  String? materialName,  String? materialUnit,  int? quantity,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordMaterialEntry() when $default != null:
return $default(_that.id,_that.materialId,_that.material,_that.materialName,_that.materialUnit,_that.quantity,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _RecordMaterialEntry implements RecordMaterialEntry {
  const _RecordMaterialEntry({required this.id, required this.materialId, required this.material, required this.materialName, required this.materialUnit, required this.quantity, required this.createdAt});
  

@override final  int? id;
@override final  int? materialId;
@override final  MaterialEntity? material;
@override final  String? materialName;
@override final  String? materialUnit;
@override final  int? quantity;
@override final  String? createdAt;

/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordMaterialEntryCopyWith<_RecordMaterialEntry> get copyWith => __$RecordMaterialEntryCopyWithImpl<_RecordMaterialEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordMaterialEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.material, material) || other.material == material)&&(identical(other.materialName, materialName) || other.materialName == materialName)&&(identical(other.materialUnit, materialUnit) || other.materialUnit == materialUnit)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,materialId,material,materialName,materialUnit,quantity,createdAt);
}

@override
String toString() {
    return 'RecordMaterialEntry(id: $id, materialId: $materialId, material: $material, materialName: $materialName, materialUnit: $materialUnit, quantity: $quantity, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordMaterialEntryCopyWith<$Res> implements $RecordMaterialEntryCopyWith<$Res> {
  factory _$RecordMaterialEntryCopyWith(_RecordMaterialEntry value, $Res Function(_RecordMaterialEntry) _then) = __$RecordMaterialEntryCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? materialId, MaterialEntity? material, String? materialName, String? materialUnit, int? quantity, String? createdAt
});


@override $MaterialEntityCopyWith<$Res>? get material;

}
/// @nodoc
class __$RecordMaterialEntryCopyWithImpl<$Res>
    implements _$RecordMaterialEntryCopyWith<$Res> {
  __$RecordMaterialEntryCopyWithImpl(this._self, this._then);

  final _RecordMaterialEntry _self;
  final $Res Function(_RecordMaterialEntry) _then;

/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? materialId = freezed,Object? material = freezed,Object? materialName = freezed,Object? materialUnit = freezed,Object? quantity = freezed,Object? createdAt = freezed,}) {
  return _then(_RecordMaterialEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,materialId: freezed == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as MaterialEntity?,materialName: freezed == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String?,materialUnit: freezed == materialUnit ? _self.materialUnit : materialUnit // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RecordMaterialEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialEntityCopyWith<$Res>? get material {
    if (_self.material == null) {
    return null;
  }

  return $MaterialEntityCopyWith<$Res>(_self.material!, (value) {
    return _then(_self.copyWith(material: value));
  });
}
}

// dart format on
