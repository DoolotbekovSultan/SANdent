// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalRecordDetailModel {

 int get id; int get appointment; AppointmentModel? get appointment_detail; String get diagnosis; String? get recommendations; String? get comments; List<RecordProcedureModel>? get procedures; List<RecordMaterialModel>? get materials; int? get patient_id; String? get patient_name; int? get doctor_id; String? get doctor_name; String? get appointment_date; bool? get has_procedures; bool? get has_materials; String? get created_at; String? get updated_at;
/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalRecordDetailModelCopyWith<MedicalRecordDetailModel> get copyWith => _$MedicalRecordDetailModelCopyWithImpl<MedicalRecordDetailModel>(this as MedicalRecordDetailModel, _$identity);

  /// Serializes this MedicalRecordDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MedicalRecordDetailModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalRecordDetailModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.appointment, _this.appointment) || other.appointment == _this.appointment)&&(identical(other.appointment_detail, _this.appointment_detail) || other.appointment_detail == _this.appointment_detail)&&(identical(other.diagnosis, _this.diagnosis) || other.diagnosis == _this.diagnosis)&&(identical(other.recommendations, _this.recommendations) || other.recommendations == _this.recommendations)&&(identical(other.comments, _this.comments) || other.comments == _this.comments)&&const DeepCollectionEquality().equals(other.procedures, _this.procedures)&&const DeepCollectionEquality().equals(other.materials, _this.materials)&&(identical(other.patient_id, _this.patient_id) || other.patient_id == _this.patient_id)&&(identical(other.patient_name, _this.patient_name) || other.patient_name == _this.patient_name)&&(identical(other.doctor_id, _this.doctor_id) || other.doctor_id == _this.doctor_id)&&(identical(other.doctor_name, _this.doctor_name) || other.doctor_name == _this.doctor_name)&&(identical(other.appointment_date, _this.appointment_date) || other.appointment_date == _this.appointment_date)&&(identical(other.has_procedures, _this.has_procedures) || other.has_procedures == _this.has_procedures)&&(identical(other.has_materials, _this.has_materials) || other.has_materials == _this.has_materials)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MedicalRecordDetailModel;
  return Object.hash(runtimeType,_this.id,_this.appointment,_this.appointment_detail,_this.diagnosis,_this.recommendations,_this.comments,const DeepCollectionEquality().hash(_this.procedures),const DeepCollectionEquality().hash(_this.materials),_this.patient_id,_this.patient_name,_this.doctor_id,_this.doctor_name,_this.appointment_date,_this.has_procedures,_this.has_materials,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as MedicalRecordDetailModel;
  return 'MedicalRecordDetailModel(id: ${_this.id}, appointment: ${_this.appointment}, appointment_detail: ${_this.appointment_detail}, diagnosis: ${_this.diagnosis}, recommendations: ${_this.recommendations}, comments: ${_this.comments}, procedures: ${_this.procedures}, materials: ${_this.materials}, patient_id: ${_this.patient_id}, patient_name: ${_this.patient_name}, doctor_id: ${_this.doctor_id}, doctor_name: ${_this.doctor_name}, appointment_date: ${_this.appointment_date}, has_procedures: ${_this.has_procedures}, has_materials: ${_this.has_materials}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $MedicalRecordDetailModelCopyWith<$Res>  {
  factory $MedicalRecordDetailModelCopyWith(MedicalRecordDetailModel value, $Res Function(MedicalRecordDetailModel) _then) = _$MedicalRecordDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, int appointment, AppointmentModel? appointment_detail, String diagnosis, String? recommendations, String? comments, List<RecordProcedureModel>? procedures, List<RecordMaterialModel>? materials, int? patient_id, String? patient_name, int? doctor_id, String? doctor_name, String? appointment_date, bool? has_procedures, bool? has_materials, String? created_at, String? updated_at
});


$AppointmentModelCopyWith<$Res>? get appointment_detail;

}
/// @nodoc
class _$MedicalRecordDetailModelCopyWithImpl<$Res>
    implements $MedicalRecordDetailModelCopyWith<$Res> {
  _$MedicalRecordDetailModelCopyWithImpl(this._self, this._then);

  final MedicalRecordDetailModel _self;
  final $Res Function(MedicalRecordDetailModel) _then;

/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appointment = null,Object? appointment_detail = freezed,Object? diagnosis = null,Object? recommendations = freezed,Object? comments = freezed,Object? procedures = freezed,Object? materials = freezed,Object? patient_id = freezed,Object? patient_name = freezed,Object? doctor_id = freezed,Object? doctor_name = freezed,Object? appointment_date = freezed,Object? has_procedures = freezed,Object? has_materials = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(MedicalRecordDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as int,appointment_detail: freezed == appointment_detail ? _self.appointment_detail : appointment_detail // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,recommendations: freezed == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,procedures: freezed == procedures ? _self.procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<RecordProcedureModel>?,materials: freezed == materials ? _self.materials : materials // ignore: cast_nullable_to_non_nullable
as List<RecordMaterialModel>?,patient_id: freezed == patient_id ? _self.patient_id : patient_id // ignore: cast_nullable_to_non_nullable
as int?,patient_name: freezed == patient_name ? _self.patient_name : patient_name // ignore: cast_nullable_to_non_nullable
as String?,doctor_id: freezed == doctor_id ? _self.doctor_id : doctor_id // ignore: cast_nullable_to_non_nullable
as int?,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,appointment_date: freezed == appointment_date ? _self.appointment_date : appointment_date // ignore: cast_nullable_to_non_nullable
as String?,has_procedures: freezed == has_procedures ? _self.has_procedures : has_procedures // ignore: cast_nullable_to_non_nullable
as bool?,has_materials: freezed == has_materials ? _self.has_materials : has_materials // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<$Res>? get appointment_detail {
    if (_self.appointment_detail == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.appointment_detail!, (value) {
    return _then(_self.copyWith(appointment_detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [MedicalRecordDetailModel].
extension MedicalRecordDetailModelPatterns on MedicalRecordDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalRecordDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalRecordDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalRecordDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalRecordDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int appointment,  AppointmentModel? appointment_detail,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureModel>? procedures,  List<RecordMaterialModel>? materials,  int? patient_id,  String? patient_name,  int? doctor_id,  String? doctor_name,  String? appointment_date,  bool? has_procedures,  bool? has_materials,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalRecordDetailModel() when $default != null:
return $default(_that.id,_that.appointment,_that.appointment_detail,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patient_id,_that.patient_name,_that.doctor_id,_that.doctor_name,_that.appointment_date,_that.has_procedures,_that.has_materials,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int appointment,  AppointmentModel? appointment_detail,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureModel>? procedures,  List<RecordMaterialModel>? materials,  int? patient_id,  String? patient_name,  int? doctor_id,  String? doctor_name,  String? appointment_date,  bool? has_procedures,  bool? has_materials,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordDetailModel():
return $default(_that.id,_that.appointment,_that.appointment_detail,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patient_id,_that.patient_name,_that.doctor_id,_that.doctor_name,_that.appointment_date,_that.has_procedures,_that.has_materials,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int appointment,  AppointmentModel? appointment_detail,  String diagnosis,  String? recommendations,  String? comments,  List<RecordProcedureModel>? procedures,  List<RecordMaterialModel>? materials,  int? patient_id,  String? patient_name,  int? doctor_id,  String? doctor_name,  String? appointment_date,  bool? has_procedures,  bool? has_materials,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordDetailModel() when $default != null:
return $default(_that.id,_that.appointment,_that.appointment_detail,_that.diagnosis,_that.recommendations,_that.comments,_that.procedures,_that.materials,_that.patient_id,_that.patient_name,_that.doctor_id,_that.doctor_name,_that.appointment_date,_that.has_procedures,_that.has_materials,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MedicalRecordDetailModel implements MedicalRecordDetailModel {
  const _MedicalRecordDetailModel({required this.id, required this.appointment, required this.appointment_detail, required this.diagnosis, required this.recommendations, required this.comments, required  List<RecordProcedureModel>? procedures, required  List<RecordMaterialModel>? materials, required this.patient_id, required this.patient_name, required this.doctor_id, required this.doctor_name, required this.appointment_date, required this.has_procedures, required this.has_materials, required this.created_at, required this.updated_at}): _procedures = procedures,_materials = materials;
  factory _MedicalRecordDetailModel.fromJson(Map<String, dynamic> json) => _$MedicalRecordDetailModelFromJson(json);

@override final  int id;
@override final  int appointment;
@override final  AppointmentModel? appointment_detail;
@override final  String diagnosis;
@override final  String? recommendations;
@override final  String? comments;
 final  List<RecordProcedureModel>? _procedures;
@override List<RecordProcedureModel>? get procedures {
  final value = _procedures;
  if (value == null) return null;
  if (_procedures is EqualUnmodifiableListView) return _procedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RecordMaterialModel>? _materials;
@override List<RecordMaterialModel>? get materials {
  final value = _materials;
  if (value == null) return null;
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? patient_id;
@override final  String? patient_name;
@override final  int? doctor_id;
@override final  String? doctor_name;
@override final  String? appointment_date;
@override final  bool? has_procedures;
@override final  bool? has_materials;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalRecordDetailModelCopyWith<_MedicalRecordDetailModel> get copyWith => __$MedicalRecordDetailModelCopyWithImpl<_MedicalRecordDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicalRecordDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalRecordDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.appointment_detail, appointment_detail) || other.appointment_detail == appointment_detail)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.recommendations, recommendations) || other.recommendations == recommendations)&&(identical(other.comments, comments) || other.comments == comments)&&const DeepCollectionEquality().equals(other.procedures, _procedures)&&const DeepCollectionEquality().equals(other.materials, _materials)&&(identical(other.patient_id, patient_id) || other.patient_id == patient_id)&&(identical(other.patient_name, patient_name) || other.patient_name == patient_name)&&(identical(other.doctor_id, doctor_id) || other.doctor_id == doctor_id)&&(identical(other.doctor_name, doctor_name) || other.doctor_name == doctor_name)&&(identical(other.appointment_date, appointment_date) || other.appointment_date == appointment_date)&&(identical(other.has_procedures, has_procedures) || other.has_procedures == has_procedures)&&(identical(other.has_materials, has_materials) || other.has_materials == has_materials)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,appointment,appointment_detail,diagnosis,recommendations,comments,const DeepCollectionEquality().hash(_procedures),const DeepCollectionEquality().hash(_materials),patient_id,patient_name,doctor_id,doctor_name,appointment_date,has_procedures,has_materials,created_at,updated_at);
}

@override
String toString() {
    return 'MedicalRecordDetailModel(id: $id, appointment: $appointment, appointment_detail: $appointment_detail, diagnosis: $diagnosis, recommendations: $recommendations, comments: $comments, procedures: $procedures, materials: $materials, patient_id: $patient_id, patient_name: $patient_name, doctor_id: $doctor_id, doctor_name: $doctor_name, appointment_date: $appointment_date, has_procedures: $has_procedures, has_materials: $has_materials, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$MedicalRecordDetailModelCopyWith<$Res> implements $MedicalRecordDetailModelCopyWith<$Res> {
  factory _$MedicalRecordDetailModelCopyWith(_MedicalRecordDetailModel value, $Res Function(_MedicalRecordDetailModel) _then) = __$MedicalRecordDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int appointment, AppointmentModel? appointment_detail, String diagnosis, String? recommendations, String? comments, List<RecordProcedureModel>? procedures, List<RecordMaterialModel>? materials, int? patient_id, String? patient_name, int? doctor_id, String? doctor_name, String? appointment_date, bool? has_procedures, bool? has_materials, String? created_at, String? updated_at
});


@override $AppointmentModelCopyWith<$Res>? get appointment_detail;

}
/// @nodoc
class __$MedicalRecordDetailModelCopyWithImpl<$Res>
    implements _$MedicalRecordDetailModelCopyWith<$Res> {
  __$MedicalRecordDetailModelCopyWithImpl(this._self, this._then);

  final _MedicalRecordDetailModel _self;
  final $Res Function(_MedicalRecordDetailModel) _then;

/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appointment = null,Object? appointment_detail = freezed,Object? diagnosis = null,Object? recommendations = freezed,Object? comments = freezed,Object? procedures = freezed,Object? materials = freezed,Object? patient_id = freezed,Object? patient_name = freezed,Object? doctor_id = freezed,Object? doctor_name = freezed,Object? appointment_date = freezed,Object? has_procedures = freezed,Object? has_materials = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_MedicalRecordDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as int,appointment_detail: freezed == appointment_detail ? _self.appointment_detail : appointment_detail // ignore: cast_nullable_to_non_nullable
as AppointmentModel?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,recommendations: freezed == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,procedures: freezed == procedures ? _self._procedures : procedures // ignore: cast_nullable_to_non_nullable
as List<RecordProcedureModel>?,materials: freezed == materials ? _self._materials : materials // ignore: cast_nullable_to_non_nullable
as List<RecordMaterialModel>?,patient_id: freezed == patient_id ? _self.patient_id : patient_id // ignore: cast_nullable_to_non_nullable
as int?,patient_name: freezed == patient_name ? _self.patient_name : patient_name // ignore: cast_nullable_to_non_nullable
as String?,doctor_id: freezed == doctor_id ? _self.doctor_id : doctor_id // ignore: cast_nullable_to_non_nullable
as int?,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,appointment_date: freezed == appointment_date ? _self.appointment_date : appointment_date // ignore: cast_nullable_to_non_nullable
as String?,has_procedures: freezed == has_procedures ? _self.has_procedures : has_procedures // ignore: cast_nullable_to_non_nullable
as bool?,has_materials: freezed == has_materials ? _self.has_materials : has_materials // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MedicalRecordDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<$Res>? get appointment_detail {
    if (_self.appointment_detail == null) {
    return null;
  }

  return $AppointmentModelCopyWith<$Res>(_self.appointment_detail!, (value) {
    return _then(_self.copyWith(appointment_detail: value));
  });
}
}


/// @nodoc
mixin _$RecordProcedureModel {

 int? get id; int? get medical_record; int? get procedure; ProcedureModel? get procedure_detail; String? get procedure_name; String? get notes; String? get created_at;
/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordProcedureModelCopyWith<RecordProcedureModel> get copyWith => _$RecordProcedureModelCopyWithImpl<RecordProcedureModel>(this as RecordProcedureModel, _$identity);

  /// Serializes this RecordProcedureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecordProcedureModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordProcedureModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.medical_record, _this.medical_record) || other.medical_record == _this.medical_record)&&(identical(other.procedure, _this.procedure) || other.procedure == _this.procedure)&&(identical(other.procedure_detail, _this.procedure_detail) || other.procedure_detail == _this.procedure_detail)&&(identical(other.procedure_name, _this.procedure_name) || other.procedure_name == _this.procedure_name)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecordProcedureModel;
  return Object.hash(runtimeType,_this.id,_this.medical_record,_this.procedure,_this.procedure_detail,_this.procedure_name,_this.notes,_this.created_at);
}

@override
String toString() {
  final _this = this as RecordProcedureModel;
  return 'RecordProcedureModel(id: ${_this.id}, medical_record: ${_this.medical_record}, procedure: ${_this.procedure}, procedure_detail: ${_this.procedure_detail}, procedure_name: ${_this.procedure_name}, notes: ${_this.notes}, created_at: ${_this.created_at})';
}


}

/// @nodoc
abstract mixin class $RecordProcedureModelCopyWith<$Res>  {
  factory $RecordProcedureModelCopyWith(RecordProcedureModel value, $Res Function(RecordProcedureModel) _then) = _$RecordProcedureModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? medical_record, int? procedure, ProcedureModel? procedure_detail, String? procedure_name, String? notes, String? created_at
});


$ProcedureModelCopyWith<$Res>? get procedure_detail;

}
/// @nodoc
class _$RecordProcedureModelCopyWithImpl<$Res>
    implements $RecordProcedureModelCopyWith<$Res> {
  _$RecordProcedureModelCopyWithImpl(this._self, this._then);

  final RecordProcedureModel _self;
  final $Res Function(RecordProcedureModel) _then;

/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? medical_record = freezed,Object? procedure = freezed,Object? procedure_detail = freezed,Object? procedure_name = freezed,Object? notes = freezed,Object? created_at = freezed,}) {
  return _then(RecordProcedureModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,medical_record: freezed == medical_record ? _self.medical_record : medical_record // ignore: cast_nullable_to_non_nullable
as int?,procedure: freezed == procedure ? _self.procedure : procedure // ignore: cast_nullable_to_non_nullable
as int?,procedure_detail: freezed == procedure_detail ? _self.procedure_detail : procedure_detail // ignore: cast_nullable_to_non_nullable
as ProcedureModel?,procedure_name: freezed == procedure_name ? _self.procedure_name : procedure_name // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureModelCopyWith<$Res>? get procedure_detail {
    if (_self.procedure_detail == null) {
    return null;
  }

  return $ProcedureModelCopyWith<$Res>(_self.procedure_detail!, (value) {
    return _then(_self.copyWith(procedure_detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordProcedureModel].
extension RecordProcedureModelPatterns on RecordProcedureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordProcedureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordProcedureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordProcedureModel value)  $default,){
final _that = this;
switch (_that) {
case _RecordProcedureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordProcedureModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecordProcedureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? medical_record,  int? procedure,  ProcedureModel? procedure_detail,  String? procedure_name,  String? notes,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordProcedureModel() when $default != null:
return $default(_that.id,_that.medical_record,_that.procedure,_that.procedure_detail,_that.procedure_name,_that.notes,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? medical_record,  int? procedure,  ProcedureModel? procedure_detail,  String? procedure_name,  String? notes,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _RecordProcedureModel():
return $default(_that.id,_that.medical_record,_that.procedure,_that.procedure_detail,_that.procedure_name,_that.notes,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? medical_record,  int? procedure,  ProcedureModel? procedure_detail,  String? procedure_name,  String? notes,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _RecordProcedureModel() when $default != null:
return $default(_that.id,_that.medical_record,_that.procedure,_that.procedure_detail,_that.procedure_name,_that.notes,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordProcedureModel implements RecordProcedureModel {
  const _RecordProcedureModel({required this.id, required this.medical_record, required this.procedure, required this.procedure_detail, required this.procedure_name, required this.notes, required this.created_at});
  factory _RecordProcedureModel.fromJson(Map<String, dynamic> json) => _$RecordProcedureModelFromJson(json);

@override final  int? id;
@override final  int? medical_record;
@override final  int? procedure;
@override final  ProcedureModel? procedure_detail;
@override final  String? procedure_name;
@override final  String? notes;
@override final  String? created_at;

/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordProcedureModelCopyWith<_RecordProcedureModel> get copyWith => __$RecordProcedureModelCopyWithImpl<_RecordProcedureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordProcedureModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordProcedureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medical_record, medical_record) || other.medical_record == medical_record)&&(identical(other.procedure, procedure) || other.procedure == procedure)&&(identical(other.procedure_detail, procedure_detail) || other.procedure_detail == procedure_detail)&&(identical(other.procedure_name, procedure_name) || other.procedure_name == procedure_name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,medical_record,procedure,procedure_detail,procedure_name,notes,created_at);
}

@override
String toString() {
    return 'RecordProcedureModel(id: $id, medical_record: $medical_record, procedure: $procedure, procedure_detail: $procedure_detail, procedure_name: $procedure_name, notes: $notes, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$RecordProcedureModelCopyWith<$Res> implements $RecordProcedureModelCopyWith<$Res> {
  factory _$RecordProcedureModelCopyWith(_RecordProcedureModel value, $Res Function(_RecordProcedureModel) _then) = __$RecordProcedureModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? medical_record, int? procedure, ProcedureModel? procedure_detail, String? procedure_name, String? notes, String? created_at
});


@override $ProcedureModelCopyWith<$Res>? get procedure_detail;

}
/// @nodoc
class __$RecordProcedureModelCopyWithImpl<$Res>
    implements _$RecordProcedureModelCopyWith<$Res> {
  __$RecordProcedureModelCopyWithImpl(this._self, this._then);

  final _RecordProcedureModel _self;
  final $Res Function(_RecordProcedureModel) _then;

/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? medical_record = freezed,Object? procedure = freezed,Object? procedure_detail = freezed,Object? procedure_name = freezed,Object? notes = freezed,Object? created_at = freezed,}) {
  return _then(_RecordProcedureModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,medical_record: freezed == medical_record ? _self.medical_record : medical_record // ignore: cast_nullable_to_non_nullable
as int?,procedure: freezed == procedure ? _self.procedure : procedure // ignore: cast_nullable_to_non_nullable
as int?,procedure_detail: freezed == procedure_detail ? _self.procedure_detail : procedure_detail // ignore: cast_nullable_to_non_nullable
as ProcedureModel?,procedure_name: freezed == procedure_name ? _self.procedure_name : procedure_name // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RecordProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcedureModelCopyWith<$Res>? get procedure_detail {
    if (_self.procedure_detail == null) {
    return null;
  }

  return $ProcedureModelCopyWith<$Res>(_self.procedure_detail!, (value) {
    return _then(_self.copyWith(procedure_detail: value));
  });
}
}


/// @nodoc
mixin _$RecordMaterialModel {

 int? get id; int? get medical_record; int? get material; MaterialModel? get material_detail; String? get material_name; String? get material_unit; int? get quantity; String? get created_at;
/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordMaterialModelCopyWith<RecordMaterialModel> get copyWith => _$RecordMaterialModelCopyWithImpl<RecordMaterialModel>(this as RecordMaterialModel, _$identity);

  /// Serializes this RecordMaterialModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecordMaterialModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordMaterialModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.medical_record, _this.medical_record) || other.medical_record == _this.medical_record)&&(identical(other.material, _this.material) || other.material == _this.material)&&(identical(other.material_detail, _this.material_detail) || other.material_detail == _this.material_detail)&&(identical(other.material_name, _this.material_name) || other.material_name == _this.material_name)&&(identical(other.material_unit, _this.material_unit) || other.material_unit == _this.material_unit)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecordMaterialModel;
  return Object.hash(runtimeType,_this.id,_this.medical_record,_this.material,_this.material_detail,_this.material_name,_this.material_unit,_this.quantity,_this.created_at);
}

@override
String toString() {
  final _this = this as RecordMaterialModel;
  return 'RecordMaterialModel(id: ${_this.id}, medical_record: ${_this.medical_record}, material: ${_this.material}, material_detail: ${_this.material_detail}, material_name: ${_this.material_name}, material_unit: ${_this.material_unit}, quantity: ${_this.quantity}, created_at: ${_this.created_at})';
}


}

/// @nodoc
abstract mixin class $RecordMaterialModelCopyWith<$Res>  {
  factory $RecordMaterialModelCopyWith(RecordMaterialModel value, $Res Function(RecordMaterialModel) _then) = _$RecordMaterialModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? medical_record, int? material, MaterialModel? material_detail, String? material_name, String? material_unit, int? quantity, String? created_at
});


$MaterialModelCopyWith<$Res>? get material_detail;

}
/// @nodoc
class _$RecordMaterialModelCopyWithImpl<$Res>
    implements $RecordMaterialModelCopyWith<$Res> {
  _$RecordMaterialModelCopyWithImpl(this._self, this._then);

  final RecordMaterialModel _self;
  final $Res Function(RecordMaterialModel) _then;

/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? medical_record = freezed,Object? material = freezed,Object? material_detail = freezed,Object? material_name = freezed,Object? material_unit = freezed,Object? quantity = freezed,Object? created_at = freezed,}) {
  return _then(RecordMaterialModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,medical_record: freezed == medical_record ? _self.medical_record : medical_record // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as int?,material_detail: freezed == material_detail ? _self.material_detail : material_detail // ignore: cast_nullable_to_non_nullable
as MaterialModel?,material_name: freezed == material_name ? _self.material_name : material_name // ignore: cast_nullable_to_non_nullable
as String?,material_unit: freezed == material_unit ? _self.material_unit : material_unit // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialModelCopyWith<$Res>? get material_detail {
    if (_self.material_detail == null) {
    return null;
  }

  return $MaterialModelCopyWith<$Res>(_self.material_detail!, (value) {
    return _then(_self.copyWith(material_detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecordMaterialModel].
extension RecordMaterialModelPatterns on RecordMaterialModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordMaterialModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordMaterialModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordMaterialModel value)  $default,){
final _that = this;
switch (_that) {
case _RecordMaterialModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordMaterialModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecordMaterialModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? medical_record,  int? material,  MaterialModel? material_detail,  String? material_name,  String? material_unit,  int? quantity,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordMaterialModel() when $default != null:
return $default(_that.id,_that.medical_record,_that.material,_that.material_detail,_that.material_name,_that.material_unit,_that.quantity,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? medical_record,  int? material,  MaterialModel? material_detail,  String? material_name,  String? material_unit,  int? quantity,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _RecordMaterialModel():
return $default(_that.id,_that.medical_record,_that.material,_that.material_detail,_that.material_name,_that.material_unit,_that.quantity,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? medical_record,  int? material,  MaterialModel? material_detail,  String? material_name,  String? material_unit,  int? quantity,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _RecordMaterialModel() when $default != null:
return $default(_that.id,_that.medical_record,_that.material,_that.material_detail,_that.material_name,_that.material_unit,_that.quantity,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordMaterialModel implements RecordMaterialModel {
  const _RecordMaterialModel({required this.id, required this.medical_record, required this.material, required this.material_detail, required this.material_name, required this.material_unit, required this.quantity, required this.created_at});
  factory _RecordMaterialModel.fromJson(Map<String, dynamic> json) => _$RecordMaterialModelFromJson(json);

@override final  int? id;
@override final  int? medical_record;
@override final  int? material;
@override final  MaterialModel? material_detail;
@override final  String? material_name;
@override final  String? material_unit;
@override final  int? quantity;
@override final  String? created_at;

/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordMaterialModelCopyWith<_RecordMaterialModel> get copyWith => __$RecordMaterialModelCopyWithImpl<_RecordMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medical_record, medical_record) || other.medical_record == medical_record)&&(identical(other.material, material) || other.material == material)&&(identical(other.material_detail, material_detail) || other.material_detail == material_detail)&&(identical(other.material_name, material_name) || other.material_name == material_name)&&(identical(other.material_unit, material_unit) || other.material_unit == material_unit)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,medical_record,material,material_detail,material_name,material_unit,quantity,created_at);
}

@override
String toString() {
    return 'RecordMaterialModel(id: $id, medical_record: $medical_record, material: $material, material_detail: $material_detail, material_name: $material_name, material_unit: $material_unit, quantity: $quantity, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$RecordMaterialModelCopyWith<$Res> implements $RecordMaterialModelCopyWith<$Res> {
  factory _$RecordMaterialModelCopyWith(_RecordMaterialModel value, $Res Function(_RecordMaterialModel) _then) = __$RecordMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? medical_record, int? material, MaterialModel? material_detail, String? material_name, String? material_unit, int? quantity, String? created_at
});


@override $MaterialModelCopyWith<$Res>? get material_detail;

}
/// @nodoc
class __$RecordMaterialModelCopyWithImpl<$Res>
    implements _$RecordMaterialModelCopyWith<$Res> {
  __$RecordMaterialModelCopyWithImpl(this._self, this._then);

  final _RecordMaterialModel _self;
  final $Res Function(_RecordMaterialModel) _then;

/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? medical_record = freezed,Object? material = freezed,Object? material_detail = freezed,Object? material_name = freezed,Object? material_unit = freezed,Object? quantity = freezed,Object? created_at = freezed,}) {
  return _then(_RecordMaterialModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,medical_record: freezed == medical_record ? _self.medical_record : medical_record // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as int?,material_detail: freezed == material_detail ? _self.material_detail : material_detail // ignore: cast_nullable_to_non_nullable
as MaterialModel?,material_name: freezed == material_name ? _self.material_name : material_name // ignore: cast_nullable_to_non_nullable
as String?,material_unit: freezed == material_unit ? _self.material_unit : material_unit // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RecordMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MaterialModelCopyWith<$Res>? get material_detail {
    if (_self.material_detail == null) {
    return null;
  }

  return $MaterialModelCopyWith<$Res>(_self.material_detail!, (value) {
    return _then(_self.copyWith(material_detail: value));
  });
}
}

// dart format on
