// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientDocumentEntity {

 int get id; int get patient; String get documentType; String? get documentTypeDisplay; String? get file; String? get fileUrl; String? get description; String? get uploadedAt;
/// Create a copy of PatientDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientDocumentEntityCopyWith<PatientDocumentEntity> get copyWith => _$PatientDocumentEntityCopyWithImpl<PatientDocumentEntity>(this as PatientDocumentEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientDocumentEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientDocumentEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&(identical(other.documentType, _this.documentType) || other.documentType == _this.documentType)&&(identical(other.documentTypeDisplay, _this.documentTypeDisplay) || other.documentTypeDisplay == _this.documentTypeDisplay)&&(identical(other.file, _this.file) || other.file == _this.file)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.uploadedAt, _this.uploadedAt) || other.uploadedAt == _this.uploadedAt));
}


@override
int get hashCode {
  final _this = this as PatientDocumentEntity;
  return Object.hash(runtimeType,_this.id,_this.patient,_this.documentType,_this.documentTypeDisplay,_this.file,_this.fileUrl,_this.description,_this.uploadedAt);
}

@override
String toString() {
  final _this = this as PatientDocumentEntity;
  return 'PatientDocumentEntity(id: ${_this.id}, patient: ${_this.patient}, documentType: ${_this.documentType}, documentTypeDisplay: ${_this.documentTypeDisplay}, file: ${_this.file}, fileUrl: ${_this.fileUrl}, description: ${_this.description}, uploadedAt: ${_this.uploadedAt})';
}


}

/// @nodoc
abstract mixin class $PatientDocumentEntityCopyWith<$Res>  {
  factory $PatientDocumentEntityCopyWith(PatientDocumentEntity value, $Res Function(PatientDocumentEntity) _then) = _$PatientDocumentEntityCopyWithImpl;
@useResult
$Res call({
 int id, int patient, String documentType, String? documentTypeDisplay, String? file, String? fileUrl, String? description, String? uploadedAt
});




}
/// @nodoc
class _$PatientDocumentEntityCopyWithImpl<$Res>
    implements $PatientDocumentEntityCopyWith<$Res> {
  _$PatientDocumentEntityCopyWithImpl(this._self, this._then);

  final PatientDocumentEntity _self;
  final $Res Function(PatientDocumentEntity) _then;

/// Create a copy of PatientDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patient = null,Object? documentType = null,Object? documentTypeDisplay = freezed,Object? file = freezed,Object? fileUrl = freezed,Object? description = freezed,Object? uploadedAt = freezed,}) {
  return _then(PatientDocumentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,documentTypeDisplay: freezed == documentTypeDisplay ? _self.documentTypeDisplay : documentTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientDocumentEntity].
extension PatientDocumentEntityPatterns on PatientDocumentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientDocumentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientDocumentEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientDocumentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientDocumentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int patient,  String documentType,  String? documentTypeDisplay,  String? file,  String? fileUrl,  String? description,  String? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientDocumentEntity() when $default != null:
return $default(_that.id,_that.patient,_that.documentType,_that.documentTypeDisplay,_that.file,_that.fileUrl,_that.description,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int patient,  String documentType,  String? documentTypeDisplay,  String? file,  String? fileUrl,  String? description,  String? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _PatientDocumentEntity():
return $default(_that.id,_that.patient,_that.documentType,_that.documentTypeDisplay,_that.file,_that.fileUrl,_that.description,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int patient,  String documentType,  String? documentTypeDisplay,  String? file,  String? fileUrl,  String? description,  String? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatientDocumentEntity() when $default != null:
return $default(_that.id,_that.patient,_that.documentType,_that.documentTypeDisplay,_that.file,_that.fileUrl,_that.description,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PatientDocumentEntity implements PatientDocumentEntity {
  const _PatientDocumentEntity({required this.id, required this.patient, required this.documentType, required this.documentTypeDisplay, required this.file, required this.fileUrl, required this.description, required this.uploadedAt});
  

@override final  int id;
@override final  int patient;
@override final  String documentType;
@override final  String? documentTypeDisplay;
@override final  String? file;
@override final  String? fileUrl;
@override final  String? description;
@override final  String? uploadedAt;

/// Create a copy of PatientDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientDocumentEntityCopyWith<_PatientDocumentEntity> get copyWith => __$PatientDocumentEntityCopyWithImpl<_PatientDocumentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientDocumentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentTypeDisplay, documentTypeDisplay) || other.documentTypeDisplay == documentTypeDisplay)&&(identical(other.file, file) || other.file == file)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,patient,documentType,documentTypeDisplay,file,fileUrl,description,uploadedAt);
}

@override
String toString() {
    return 'PatientDocumentEntity(id: $id, patient: $patient, documentType: $documentType, documentTypeDisplay: $documentTypeDisplay, file: $file, fileUrl: $fileUrl, description: $description, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientDocumentEntityCopyWith<$Res> implements $PatientDocumentEntityCopyWith<$Res> {
  factory _$PatientDocumentEntityCopyWith(_PatientDocumentEntity value, $Res Function(_PatientDocumentEntity) _then) = __$PatientDocumentEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int patient, String documentType, String? documentTypeDisplay, String? file, String? fileUrl, String? description, String? uploadedAt
});




}
/// @nodoc
class __$PatientDocumentEntityCopyWithImpl<$Res>
    implements _$PatientDocumentEntityCopyWith<$Res> {
  __$PatientDocumentEntityCopyWithImpl(this._self, this._then);

  final _PatientDocumentEntity _self;
  final $Res Function(_PatientDocumentEntity) _then;

/// Create a copy of PatientDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patient = null,Object? documentType = null,Object? documentTypeDisplay = freezed,Object? file = freezed,Object? fileUrl = freezed,Object? description = freezed,Object? uploadedAt = freezed,}) {
  return _then(_PatientDocumentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String,documentTypeDisplay: freezed == documentTypeDisplay ? _self.documentTypeDisplay : documentTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
