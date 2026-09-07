// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicalRecordModel {

 int get id; int get appointment; String? get patient_name; String? get doctor_name; String? get appointment_date; String get diagnosis; int? get procedure_count; int? get material_count; String? get created_at;
/// Create a copy of MedicalRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalRecordModelCopyWith<MedicalRecordModel> get copyWith => _$MedicalRecordModelCopyWithImpl<MedicalRecordModel>(this as MedicalRecordModel, _$identity);

  /// Serializes this MedicalRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MedicalRecordModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalRecordModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.appointment, _this.appointment) || other.appointment == _this.appointment)&&(identical(other.patient_name, _this.patient_name) || other.patient_name == _this.patient_name)&&(identical(other.doctor_name, _this.doctor_name) || other.doctor_name == _this.doctor_name)&&(identical(other.appointment_date, _this.appointment_date) || other.appointment_date == _this.appointment_date)&&(identical(other.diagnosis, _this.diagnosis) || other.diagnosis == _this.diagnosis)&&(identical(other.procedure_count, _this.procedure_count) || other.procedure_count == _this.procedure_count)&&(identical(other.material_count, _this.material_count) || other.material_count == _this.material_count)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MedicalRecordModel;
  return Object.hash(runtimeType,_this.id,_this.appointment,_this.patient_name,_this.doctor_name,_this.appointment_date,_this.diagnosis,_this.procedure_count,_this.material_count,_this.created_at);
}

@override
String toString() {
  final _this = this as MedicalRecordModel;
  return 'MedicalRecordModel(id: ${_this.id}, appointment: ${_this.appointment}, patient_name: ${_this.patient_name}, doctor_name: ${_this.doctor_name}, appointment_date: ${_this.appointment_date}, diagnosis: ${_this.diagnosis}, procedure_count: ${_this.procedure_count}, material_count: ${_this.material_count}, created_at: ${_this.created_at})';
}


}

/// @nodoc
abstract mixin class $MedicalRecordModelCopyWith<$Res>  {
  factory $MedicalRecordModelCopyWith(MedicalRecordModel value, $Res Function(MedicalRecordModel) _then) = _$MedicalRecordModelCopyWithImpl;
@useResult
$Res call({
 int id, int appointment, String? patient_name, String? doctor_name, String? appointment_date, String diagnosis, int? procedure_count, int? material_count, String? created_at
});




}
/// @nodoc
class _$MedicalRecordModelCopyWithImpl<$Res>
    implements $MedicalRecordModelCopyWith<$Res> {
  _$MedicalRecordModelCopyWithImpl(this._self, this._then);

  final MedicalRecordModel _self;
  final $Res Function(MedicalRecordModel) _then;

/// Create a copy of MedicalRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appointment = null,Object? patient_name = freezed,Object? doctor_name = freezed,Object? appointment_date = freezed,Object? diagnosis = null,Object? procedure_count = freezed,Object? material_count = freezed,Object? created_at = freezed,}) {
  return _then(MedicalRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as int,patient_name: freezed == patient_name ? _self.patient_name : patient_name // ignore: cast_nullable_to_non_nullable
as String?,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,appointment_date: freezed == appointment_date ? _self.appointment_date : appointment_date // ignore: cast_nullable_to_non_nullable
as String?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,procedure_count: freezed == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int?,material_count: freezed == material_count ? _self.material_count : material_count // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicalRecordModel].
extension MedicalRecordModelPatterns on MedicalRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int appointment,  String? patient_name,  String? doctor_name,  String? appointment_date,  String diagnosis,  int? procedure_count,  int? material_count,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalRecordModel() when $default != null:
return $default(_that.id,_that.appointment,_that.patient_name,_that.doctor_name,_that.appointment_date,_that.diagnosis,_that.procedure_count,_that.material_count,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int appointment,  String? patient_name,  String? doctor_name,  String? appointment_date,  String diagnosis,  int? procedure_count,  int? material_count,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordModel():
return $default(_that.id,_that.appointment,_that.patient_name,_that.doctor_name,_that.appointment_date,_that.diagnosis,_that.procedure_count,_that.material_count,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int appointment,  String? patient_name,  String? doctor_name,  String? appointment_date,  String diagnosis,  int? procedure_count,  int? material_count,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordModel() when $default != null:
return $default(_that.id,_that.appointment,_that.patient_name,_that.doctor_name,_that.appointment_date,_that.diagnosis,_that.procedure_count,_that.material_count,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MedicalRecordModel implements MedicalRecordModel {
  const _MedicalRecordModel({required this.id, required this.appointment, required this.patient_name, required this.doctor_name, required this.appointment_date, required this.diagnosis, required this.procedure_count, required this.material_count, required this.created_at});
  factory _MedicalRecordModel.fromJson(Map<String, dynamic> json) => _$MedicalRecordModelFromJson(json);

@override final  int id;
@override final  int appointment;
@override final  String? patient_name;
@override final  String? doctor_name;
@override final  String? appointment_date;
@override final  String diagnosis;
@override final  int? procedure_count;
@override final  int? material_count;
@override final  String? created_at;

/// Create a copy of MedicalRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalRecordModelCopyWith<_MedicalRecordModel> get copyWith => __$MedicalRecordModelCopyWithImpl<_MedicalRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicalRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.appointment, appointment) || other.appointment == appointment)&&(identical(other.patient_name, patient_name) || other.patient_name == patient_name)&&(identical(other.doctor_name, doctor_name) || other.doctor_name == doctor_name)&&(identical(other.appointment_date, appointment_date) || other.appointment_date == appointment_date)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.procedure_count, procedure_count) || other.procedure_count == procedure_count)&&(identical(other.material_count, material_count) || other.material_count == material_count)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,appointment,patient_name,doctor_name,appointment_date,diagnosis,procedure_count,material_count,created_at);
}

@override
String toString() {
    return 'MedicalRecordModel(id: $id, appointment: $appointment, patient_name: $patient_name, doctor_name: $doctor_name, appointment_date: $appointment_date, diagnosis: $diagnosis, procedure_count: $procedure_count, material_count: $material_count, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$MedicalRecordModelCopyWith<$Res> implements $MedicalRecordModelCopyWith<$Res> {
  factory _$MedicalRecordModelCopyWith(_MedicalRecordModel value, $Res Function(_MedicalRecordModel) _then) = __$MedicalRecordModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int appointment, String? patient_name, String? doctor_name, String? appointment_date, String diagnosis, int? procedure_count, int? material_count, String? created_at
});




}
/// @nodoc
class __$MedicalRecordModelCopyWithImpl<$Res>
    implements _$MedicalRecordModelCopyWith<$Res> {
  __$MedicalRecordModelCopyWithImpl(this._self, this._then);

  final _MedicalRecordModel _self;
  final $Res Function(_MedicalRecordModel) _then;

/// Create a copy of MedicalRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appointment = null,Object? patient_name = freezed,Object? doctor_name = freezed,Object? appointment_date = freezed,Object? diagnosis = null,Object? procedure_count = freezed,Object? material_count = freezed,Object? created_at = freezed,}) {
  return _then(_MedicalRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointment: null == appointment ? _self.appointment : appointment // ignore: cast_nullable_to_non_nullable
as int,patient_name: freezed == patient_name ? _self.patient_name : patient_name // ignore: cast_nullable_to_non_nullable
as String?,doctor_name: freezed == doctor_name ? _self.doctor_name : doctor_name // ignore: cast_nullable_to_non_nullable
as String?,appointment_date: freezed == appointment_date ? _self.appointment_date : appointment_date // ignore: cast_nullable_to_non_nullable
as String?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,procedure_count: freezed == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int?,material_count: freezed == material_count ? _self.material_count : material_count // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
