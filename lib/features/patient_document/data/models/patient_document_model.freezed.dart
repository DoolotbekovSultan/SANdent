// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientDocumentModel {

 int get id; int get patient; String get document_type; String? get document_type_display; String? get file; String? get file_url; String? get description; String? get uploaded_at;
/// Create a copy of PatientDocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientDocumentModelCopyWith<PatientDocumentModel> get copyWith => _$PatientDocumentModelCopyWithImpl<PatientDocumentModel>(this as PatientDocumentModel, _$identity);

  /// Serializes this PatientDocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientDocumentModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientDocumentModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&(identical(other.document_type, _this.document_type) || other.document_type == _this.document_type)&&(identical(other.document_type_display, _this.document_type_display) || other.document_type_display == _this.document_type_display)&&(identical(other.file, _this.file) || other.file == _this.file)&&(identical(other.file_url, _this.file_url) || other.file_url == _this.file_url)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.uploaded_at, _this.uploaded_at) || other.uploaded_at == _this.uploaded_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientDocumentModel;
  return Object.hash(runtimeType,_this.id,_this.patient,_this.document_type,_this.document_type_display,_this.file,_this.file_url,_this.description,_this.uploaded_at);
}

@override
String toString() {
  final _this = this as PatientDocumentModel;
  return 'PatientDocumentModel(id: ${_this.id}, patient: ${_this.patient}, document_type: ${_this.document_type}, document_type_display: ${_this.document_type_display}, file: ${_this.file}, file_url: ${_this.file_url}, description: ${_this.description}, uploaded_at: ${_this.uploaded_at})';
}


}

/// @nodoc
abstract mixin class $PatientDocumentModelCopyWith<$Res>  {
  factory $PatientDocumentModelCopyWith(PatientDocumentModel value, $Res Function(PatientDocumentModel) _then) = _$PatientDocumentModelCopyWithImpl;
@useResult
$Res call({
 int id, int patient, String document_type, String? document_type_display, String? file, String? file_url, String? description, String? uploaded_at
});




}
/// @nodoc
class _$PatientDocumentModelCopyWithImpl<$Res>
    implements $PatientDocumentModelCopyWith<$Res> {
  _$PatientDocumentModelCopyWithImpl(this._self, this._then);

  final PatientDocumentModel _self;
  final $Res Function(PatientDocumentModel) _then;

/// Create a copy of PatientDocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patient = null,Object? document_type = null,Object? document_type_display = freezed,Object? file = freezed,Object? file_url = freezed,Object? description = freezed,Object? uploaded_at = freezed,}) {
  return _then(PatientDocumentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,document_type: null == document_type ? _self.document_type : document_type // ignore: cast_nullable_to_non_nullable
as String,document_type_display: freezed == document_type_display ? _self.document_type_display : document_type_display // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,file_url: freezed == file_url ? _self.file_url : file_url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,uploaded_at: freezed == uploaded_at ? _self.uploaded_at : uploaded_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientDocumentModel].
extension PatientDocumentModelPatterns on PatientDocumentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientDocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientDocumentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientDocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientDocumentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientDocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientDocumentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int patient,  String document_type,  String? document_type_display,  String? file,  String? file_url,  String? description,  String? uploaded_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientDocumentModel() when $default != null:
return $default(_that.id,_that.patient,_that.document_type,_that.document_type_display,_that.file,_that.file_url,_that.description,_that.uploaded_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int patient,  String document_type,  String? document_type_display,  String? file,  String? file_url,  String? description,  String? uploaded_at)  $default,) {final _that = this;
switch (_that) {
case _PatientDocumentModel():
return $default(_that.id,_that.patient,_that.document_type,_that.document_type_display,_that.file,_that.file_url,_that.description,_that.uploaded_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int patient,  String document_type,  String? document_type_display,  String? file,  String? file_url,  String? description,  String? uploaded_at)?  $default,) {final _that = this;
switch (_that) {
case _PatientDocumentModel() when $default != null:
return $default(_that.id,_that.patient,_that.document_type,_that.document_type_display,_that.file,_that.file_url,_that.description,_that.uploaded_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientDocumentModel implements PatientDocumentModel {
  const _PatientDocumentModel({required this.id, required this.patient, required this.document_type, required this.document_type_display, required this.file, required this.file_url, required this.description, required this.uploaded_at});
  factory _PatientDocumentModel.fromJson(Map<String, dynamic> json) => _$PatientDocumentModelFromJson(json);

@override final  int id;
@override final  int patient;
@override final  String document_type;
@override final  String? document_type_display;
@override final  String? file;
@override final  String? file_url;
@override final  String? description;
@override final  String? uploaded_at;

/// Create a copy of PatientDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientDocumentModelCopyWith<_PatientDocumentModel> get copyWith => __$PatientDocumentModelCopyWithImpl<_PatientDocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientDocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientDocumentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.document_type, document_type) || other.document_type == document_type)&&(identical(other.document_type_display, document_type_display) || other.document_type_display == document_type_display)&&(identical(other.file, file) || other.file == file)&&(identical(other.file_url, file_url) || other.file_url == file_url)&&(identical(other.description, description) || other.description == description)&&(identical(other.uploaded_at, uploaded_at) || other.uploaded_at == uploaded_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,patient,document_type,document_type_display,file,file_url,description,uploaded_at);
}

@override
String toString() {
    return 'PatientDocumentModel(id: $id, patient: $patient, document_type: $document_type, document_type_display: $document_type_display, file: $file, file_url: $file_url, description: $description, uploaded_at: $uploaded_at)';
}


}

/// @nodoc
abstract mixin class _$PatientDocumentModelCopyWith<$Res> implements $PatientDocumentModelCopyWith<$Res> {
  factory _$PatientDocumentModelCopyWith(_PatientDocumentModel value, $Res Function(_PatientDocumentModel) _then) = __$PatientDocumentModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int patient, String document_type, String? document_type_display, String? file, String? file_url, String? description, String? uploaded_at
});




}
/// @nodoc
class __$PatientDocumentModelCopyWithImpl<$Res>
    implements _$PatientDocumentModelCopyWith<$Res> {
  __$PatientDocumentModelCopyWithImpl(this._self, this._then);

  final _PatientDocumentModel _self;
  final $Res Function(_PatientDocumentModel) _then;

/// Create a copy of PatientDocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patient = null,Object? document_type = null,Object? document_type_display = freezed,Object? file = freezed,Object? file_url = freezed,Object? description = freezed,Object? uploaded_at = freezed,}) {
  return _then(_PatientDocumentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as int,document_type: null == document_type ? _self.document_type : document_type // ignore: cast_nullable_to_non_nullable
as String,document_type_display: freezed == document_type_display ? _self.document_type_display : document_type_display // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,file_url: freezed == file_url ? _self.file_url : file_url // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,uploaded_at: freezed == uploaded_at ? _self.uploaded_at : uploaded_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
