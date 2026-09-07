// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicalRecordEntity {

 int get id; int get appointmentId; String? get patientName; String? get doctorName; String? get appointmentDate; String get diagnosis; int? get procedureCount; int? get materialCount; String? get createdAt;
/// Create a copy of MedicalRecordEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicalRecordEntityCopyWith<MedicalRecordEntity> get copyWith => _$MedicalRecordEntityCopyWithImpl<MedicalRecordEntity>(this as MedicalRecordEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MedicalRecordEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicalRecordEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.appointmentId, _this.appointmentId) || other.appointmentId == _this.appointmentId)&&(identical(other.patientName, _this.patientName) || other.patientName == _this.patientName)&&(identical(other.doctorName, _this.doctorName) || other.doctorName == _this.doctorName)&&(identical(other.appointmentDate, _this.appointmentDate) || other.appointmentDate == _this.appointmentDate)&&(identical(other.diagnosis, _this.diagnosis) || other.diagnosis == _this.diagnosis)&&(identical(other.procedureCount, _this.procedureCount) || other.procedureCount == _this.procedureCount)&&(identical(other.materialCount, _this.materialCount) || other.materialCount == _this.materialCount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as MedicalRecordEntity;
  return Object.hash(runtimeType,_this.id,_this.appointmentId,_this.patientName,_this.doctorName,_this.appointmentDate,_this.diagnosis,_this.procedureCount,_this.materialCount,_this.createdAt);
}

@override
String toString() {
  final _this = this as MedicalRecordEntity;
  return 'MedicalRecordEntity(id: ${_this.id}, appointmentId: ${_this.appointmentId}, patientName: ${_this.patientName}, doctorName: ${_this.doctorName}, appointmentDate: ${_this.appointmentDate}, diagnosis: ${_this.diagnosis}, procedureCount: ${_this.procedureCount}, materialCount: ${_this.materialCount}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MedicalRecordEntityCopyWith<$Res>  {
  factory $MedicalRecordEntityCopyWith(MedicalRecordEntity value, $Res Function(MedicalRecordEntity) _then) = _$MedicalRecordEntityCopyWithImpl;
@useResult
$Res call({
 int id, int appointmentId, String? patientName, String? doctorName, String? appointmentDate, String diagnosis, int? procedureCount, int? materialCount, String? createdAt
});




}
/// @nodoc
class _$MedicalRecordEntityCopyWithImpl<$Res>
    implements $MedicalRecordEntityCopyWith<$Res> {
  _$MedicalRecordEntityCopyWithImpl(this._self, this._then);

  final MedicalRecordEntity _self;
  final $Res Function(MedicalRecordEntity) _then;

/// Create a copy of MedicalRecordEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appointmentId = null,Object? patientName = freezed,Object? doctorName = freezed,Object? appointmentDate = freezed,Object? diagnosis = null,Object? procedureCount = freezed,Object? materialCount = freezed,Object? createdAt = freezed,}) {
  return _then(MedicalRecordEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,appointmentDate: freezed == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,procedureCount: freezed == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int?,materialCount: freezed == materialCount ? _self.materialCount : materialCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicalRecordEntity].
extension MedicalRecordEntityPatterns on MedicalRecordEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicalRecordEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicalRecordEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicalRecordEntity value)  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicalRecordEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MedicalRecordEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int appointmentId,  String? patientName,  String? doctorName,  String? appointmentDate,  String diagnosis,  int? procedureCount,  int? materialCount,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicalRecordEntity() when $default != null:
return $default(_that.id,_that.appointmentId,_that.patientName,_that.doctorName,_that.appointmentDate,_that.diagnosis,_that.procedureCount,_that.materialCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int appointmentId,  String? patientName,  String? doctorName,  String? appointmentDate,  String diagnosis,  int? procedureCount,  int? materialCount,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordEntity():
return $default(_that.id,_that.appointmentId,_that.patientName,_that.doctorName,_that.appointmentDate,_that.diagnosis,_that.procedureCount,_that.materialCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int appointmentId,  String? patientName,  String? doctorName,  String? appointmentDate,  String diagnosis,  int? procedureCount,  int? materialCount,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MedicalRecordEntity() when $default != null:
return $default(_that.id,_that.appointmentId,_that.patientName,_that.doctorName,_that.appointmentDate,_that.diagnosis,_that.procedureCount,_that.materialCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MedicalRecordEntity implements MedicalRecordEntity {
  const _MedicalRecordEntity({required this.id, required this.appointmentId, required this.patientName, required this.doctorName, required this.appointmentDate, required this.diagnosis, required this.procedureCount, required this.materialCount, required this.createdAt});
  

@override final  int id;
@override final  int appointmentId;
@override final  String? patientName;
@override final  String? doctorName;
@override final  String? appointmentDate;
@override final  String diagnosis;
@override final  int? procedureCount;
@override final  int? materialCount;
@override final  String? createdAt;

/// Create a copy of MedicalRecordEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicalRecordEntityCopyWith<_MedicalRecordEntity> get copyWith => __$MedicalRecordEntityCopyWithImpl<_MedicalRecordEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicalRecordEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.doctorName, doctorName) || other.doctorName == doctorName)&&(identical(other.appointmentDate, appointmentDate) || other.appointmentDate == appointmentDate)&&(identical(other.diagnosis, diagnosis) || other.diagnosis == diagnosis)&&(identical(other.procedureCount, procedureCount) || other.procedureCount == procedureCount)&&(identical(other.materialCount, materialCount) || other.materialCount == materialCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,appointmentId,patientName,doctorName,appointmentDate,diagnosis,procedureCount,materialCount,createdAt);
}

@override
String toString() {
    return 'MedicalRecordEntity(id: $id, appointmentId: $appointmentId, patientName: $patientName, doctorName: $doctorName, appointmentDate: $appointmentDate, diagnosis: $diagnosis, procedureCount: $procedureCount, materialCount: $materialCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MedicalRecordEntityCopyWith<$Res> implements $MedicalRecordEntityCopyWith<$Res> {
  factory _$MedicalRecordEntityCopyWith(_MedicalRecordEntity value, $Res Function(_MedicalRecordEntity) _then) = __$MedicalRecordEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int appointmentId, String? patientName, String? doctorName, String? appointmentDate, String diagnosis, int? procedureCount, int? materialCount, String? createdAt
});




}
/// @nodoc
class __$MedicalRecordEntityCopyWithImpl<$Res>
    implements _$MedicalRecordEntityCopyWith<$Res> {
  __$MedicalRecordEntityCopyWithImpl(this._self, this._then);

  final _MedicalRecordEntity _self;
  final $Res Function(_MedicalRecordEntity) _then;

/// Create a copy of MedicalRecordEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appointmentId = null,Object? patientName = freezed,Object? doctorName = freezed,Object? appointmentDate = freezed,Object? diagnosis = null,Object? procedureCount = freezed,Object? materialCount = freezed,Object? createdAt = freezed,}) {
  return _then(_MedicalRecordEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,patientName: freezed == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String?,doctorName: freezed == doctorName ? _self.doctorName : doctorName // ignore: cast_nullable_to_non_nullable
as String?,appointmentDate: freezed == appointmentDate ? _self.appointmentDate : appointmentDate // ignore: cast_nullable_to_non_nullable
as String?,diagnosis: null == diagnosis ? _self.diagnosis : diagnosis // ignore: cast_nullable_to_non_nullable
as String,procedureCount: freezed == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int?,materialCount: freezed == materialCount ? _self.materialCount : materialCount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
