// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusHistoryModel {

 int? get id; String get status; String? get status_display; String? get old_status; int? get changed_by; String? get changed_by_name; String? get note; String? get changed_at;
/// Create a copy of StatusHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusHistoryModelCopyWith<StatusHistoryModel> get copyWith => _$StatusHistoryModelCopyWithImpl<StatusHistoryModel>(this as StatusHistoryModel, _$identity);

  /// Serializes this StatusHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StatusHistoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusHistoryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.status_display, _this.status_display) || other.status_display == _this.status_display)&&(identical(other.old_status, _this.old_status) || other.old_status == _this.old_status)&&(identical(other.changed_by, _this.changed_by) || other.changed_by == _this.changed_by)&&(identical(other.changed_by_name, _this.changed_by_name) || other.changed_by_name == _this.changed_by_name)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.changed_at, _this.changed_at) || other.changed_at == _this.changed_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StatusHistoryModel;
  return Object.hash(runtimeType,_this.id,_this.status,_this.status_display,_this.old_status,_this.changed_by,_this.changed_by_name,_this.note,_this.changed_at);
}

@override
String toString() {
  final _this = this as StatusHistoryModel;
  return 'StatusHistoryModel(id: ${_this.id}, status: ${_this.status}, status_display: ${_this.status_display}, old_status: ${_this.old_status}, changed_by: ${_this.changed_by}, changed_by_name: ${_this.changed_by_name}, note: ${_this.note}, changed_at: ${_this.changed_at})';
}


}

/// @nodoc
abstract mixin class $StatusHistoryModelCopyWith<$Res>  {
  factory $StatusHistoryModelCopyWith(StatusHistoryModel value, $Res Function(StatusHistoryModel) _then) = _$StatusHistoryModelCopyWithImpl;
@useResult
$Res call({
 int? id, String status, String? status_display, String? old_status, int? changed_by, String? changed_by_name, String? note, String? changed_at
});




}
/// @nodoc
class _$StatusHistoryModelCopyWithImpl<$Res>
    implements $StatusHistoryModelCopyWith<$Res> {
  _$StatusHistoryModelCopyWithImpl(this._self, this._then);

  final StatusHistoryModel _self;
  final $Res Function(StatusHistoryModel) _then;

/// Create a copy of StatusHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = null,Object? status_display = freezed,Object? old_status = freezed,Object? changed_by = freezed,Object? changed_by_name = freezed,Object? note = freezed,Object? changed_at = freezed,}) {
  return _then(StatusHistoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,status_display: freezed == status_display ? _self.status_display : status_display // ignore: cast_nullable_to_non_nullable
as String?,old_status: freezed == old_status ? _self.old_status : old_status // ignore: cast_nullable_to_non_nullable
as String?,changed_by: freezed == changed_by ? _self.changed_by : changed_by // ignore: cast_nullable_to_non_nullable
as int?,changed_by_name: freezed == changed_by_name ? _self.changed_by_name : changed_by_name // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changed_at: freezed == changed_at ? _self.changed_at : changed_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusHistoryModel].
extension StatusHistoryModelPatterns on StatusHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String status,  String? status_display,  String? old_status,  int? changed_by,  String? changed_by_name,  String? note,  String? changed_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusHistoryModel() when $default != null:
return $default(_that.id,_that.status,_that.status_display,_that.old_status,_that.changed_by,_that.changed_by_name,_that.note,_that.changed_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String status,  String? status_display,  String? old_status,  int? changed_by,  String? changed_by_name,  String? note,  String? changed_at)  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryModel():
return $default(_that.id,_that.status,_that.status_display,_that.old_status,_that.changed_by,_that.changed_by_name,_that.note,_that.changed_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String status,  String? status_display,  String? old_status,  int? changed_by,  String? changed_by_name,  String? note,  String? changed_at)?  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryModel() when $default != null:
return $default(_that.id,_that.status,_that.status_display,_that.old_status,_that.changed_by,_that.changed_by_name,_that.note,_that.changed_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusHistoryModel implements StatusHistoryModel {
  const _StatusHistoryModel({required this.id, required this.status, required this.status_display, required this.old_status, required this.changed_by, required this.changed_by_name, required this.note, required this.changed_at});
  factory _StatusHistoryModel.fromJson(Map<String, dynamic> json) => _$StatusHistoryModelFromJson(json);

@override final  int? id;
@override final  String status;
@override final  String? status_display;
@override final  String? old_status;
@override final  int? changed_by;
@override final  String? changed_by_name;
@override final  String? note;
@override final  String? changed_at;

/// Create a copy of StatusHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusHistoryModelCopyWith<_StatusHistoryModel> get copyWith => __$StatusHistoryModelCopyWithImpl<_StatusHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusHistoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.status_display, status_display) || other.status_display == status_display)&&(identical(other.old_status, old_status) || other.old_status == old_status)&&(identical(other.changed_by, changed_by) || other.changed_by == changed_by)&&(identical(other.changed_by_name, changed_by_name) || other.changed_by_name == changed_by_name)&&(identical(other.note, note) || other.note == note)&&(identical(other.changed_at, changed_at) || other.changed_at == changed_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,status_display,old_status,changed_by,changed_by_name,note,changed_at);
}

@override
String toString() {
    return 'StatusHistoryModel(id: $id, status: $status, status_display: $status_display, old_status: $old_status, changed_by: $changed_by, changed_by_name: $changed_by_name, note: $note, changed_at: $changed_at)';
}


}

/// @nodoc
abstract mixin class _$StatusHistoryModelCopyWith<$Res> implements $StatusHistoryModelCopyWith<$Res> {
  factory _$StatusHistoryModelCopyWith(_StatusHistoryModel value, $Res Function(_StatusHistoryModel) _then) = __$StatusHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String status, String? status_display, String? old_status, int? changed_by, String? changed_by_name, String? note, String? changed_at
});




}
/// @nodoc
class __$StatusHistoryModelCopyWithImpl<$Res>
    implements _$StatusHistoryModelCopyWith<$Res> {
  __$StatusHistoryModelCopyWithImpl(this._self, this._then);

  final _StatusHistoryModel _self;
  final $Res Function(_StatusHistoryModel) _then;

/// Create a copy of StatusHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = null,Object? status_display = freezed,Object? old_status = freezed,Object? changed_by = freezed,Object? changed_by_name = freezed,Object? note = freezed,Object? changed_at = freezed,}) {
  return _then(_StatusHistoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,status_display: freezed == status_display ? _self.status_display : status_display // ignore: cast_nullable_to_non_nullable
as String?,old_status: freezed == old_status ? _self.old_status : old_status // ignore: cast_nullable_to_non_nullable
as String?,changed_by: freezed == changed_by ? _self.changed_by : changed_by // ignore: cast_nullable_to_non_nullable
as int?,changed_by_name: freezed == changed_by_name ? _self.changed_by_name : changed_by_name // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changed_at: freezed == changed_at ? _self.changed_at : changed_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
