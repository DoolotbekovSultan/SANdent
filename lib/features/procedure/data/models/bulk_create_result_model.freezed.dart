// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bulk_create_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BulkCreateResultModel {

 List<ProcedureModel> get created; List<Map<String, dynamic>> get errors; int get total; int get success_count; int get error_count;
/// Create a copy of BulkCreateResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BulkCreateResultModelCopyWith<BulkCreateResultModel> get copyWith => _$BulkCreateResultModelCopyWithImpl<BulkCreateResultModel>(this as BulkCreateResultModel, _$identity);

  /// Serializes this BulkCreateResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BulkCreateResultModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BulkCreateResultModel&&const DeepCollectionEquality().equals(other.created, _this.created)&&const DeepCollectionEquality().equals(other.errors, _this.errors)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.success_count, _this.success_count) || other.success_count == _this.success_count)&&(identical(other.error_count, _this.error_count) || other.error_count == _this.error_count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BulkCreateResultModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.created),const DeepCollectionEquality().hash(_this.errors),_this.total,_this.success_count,_this.error_count);
}

@override
String toString() {
  final _this = this as BulkCreateResultModel;
  return 'BulkCreateResultModel(created: ${_this.created}, errors: ${_this.errors}, total: ${_this.total}, success_count: ${_this.success_count}, error_count: ${_this.error_count})';
}


}

/// @nodoc
abstract mixin class $BulkCreateResultModelCopyWith<$Res>  {
  factory $BulkCreateResultModelCopyWith(BulkCreateResultModel value, $Res Function(BulkCreateResultModel) _then) = _$BulkCreateResultModelCopyWithImpl;
@useResult
$Res call({
 List<ProcedureModel> created, List<Map<String, dynamic>> errors, int total, int success_count, int error_count
});




}
/// @nodoc
class _$BulkCreateResultModelCopyWithImpl<$Res>
    implements $BulkCreateResultModelCopyWith<$Res> {
  _$BulkCreateResultModelCopyWithImpl(this._self, this._then);

  final BulkCreateResultModel _self;
  final $Res Function(BulkCreateResultModel) _then;

/// Create a copy of BulkCreateResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? created = null,Object? errors = null,Object? total = null,Object? success_count = null,Object? error_count = null,}) {
  return _then(BulkCreateResultModel(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as List<ProcedureModel>,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,success_count: null == success_count ? _self.success_count : success_count // ignore: cast_nullable_to_non_nullable
as int,error_count: null == error_count ? _self.error_count : error_count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BulkCreateResultModel].
extension BulkCreateResultModelPatterns on BulkCreateResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BulkCreateResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BulkCreateResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BulkCreateResultModel value)  $default,){
final _that = this;
switch (_that) {
case _BulkCreateResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BulkCreateResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _BulkCreateResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProcedureModel> created,  List<Map<String, dynamic>> errors,  int total,  int success_count,  int error_count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BulkCreateResultModel() when $default != null:
return $default(_that.created,_that.errors,_that.total,_that.success_count,_that.error_count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProcedureModel> created,  List<Map<String, dynamic>> errors,  int total,  int success_count,  int error_count)  $default,) {final _that = this;
switch (_that) {
case _BulkCreateResultModel():
return $default(_that.created,_that.errors,_that.total,_that.success_count,_that.error_count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProcedureModel> created,  List<Map<String, dynamic>> errors,  int total,  int success_count,  int error_count)?  $default,) {final _that = this;
switch (_that) {
case _BulkCreateResultModel() when $default != null:
return $default(_that.created,_that.errors,_that.total,_that.success_count,_that.error_count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BulkCreateResultModel implements BulkCreateResultModel {
  const _BulkCreateResultModel({required  List<ProcedureModel> created, required  List<Map<String, dynamic>> errors, required this.total, required this.success_count, required this.error_count}): _created = created,_errors = errors;
  factory _BulkCreateResultModel.fromJson(Map<String, dynamic> json) => _$BulkCreateResultModelFromJson(json);

 final  List<ProcedureModel> _created;
@override List<ProcedureModel> get created {
  if (_created is EqualUnmodifiableListView) return _created;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_created);
}

 final  List<Map<String, dynamic>> _errors;
@override List<Map<String, dynamic>> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}

@override final  int total;
@override final  int success_count;
@override final  int error_count;

/// Create a copy of BulkCreateResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BulkCreateResultModelCopyWith<_BulkCreateResultModel> get copyWith => __$BulkCreateResultModelCopyWithImpl<_BulkCreateResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BulkCreateResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BulkCreateResultModel&&const DeepCollectionEquality().equals(other.created, _created)&&const DeepCollectionEquality().equals(other.errors, _errors)&&(identical(other.total, total) || other.total == total)&&(identical(other.success_count, success_count) || other.success_count == success_count)&&(identical(other.error_count, error_count) || other.error_count == error_count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_created),const DeepCollectionEquality().hash(_errors),total,success_count,error_count);
}

@override
String toString() {
    return 'BulkCreateResultModel(created: $created, errors: $errors, total: $total, success_count: $success_count, error_count: $error_count)';
}


}

/// @nodoc
abstract mixin class _$BulkCreateResultModelCopyWith<$Res> implements $BulkCreateResultModelCopyWith<$Res> {
  factory _$BulkCreateResultModelCopyWith(_BulkCreateResultModel value, $Res Function(_BulkCreateResultModel) _then) = __$BulkCreateResultModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProcedureModel> created, List<Map<String, dynamic>> errors, int total, int success_count, int error_count
});




}
/// @nodoc
class __$BulkCreateResultModelCopyWithImpl<$Res>
    implements _$BulkCreateResultModelCopyWith<$Res> {
  __$BulkCreateResultModelCopyWithImpl(this._self, this._then);

  final _BulkCreateResultModel _self;
  final $Res Function(_BulkCreateResultModel) _then;

/// Create a copy of BulkCreateResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? created = null,Object? errors = null,Object? total = null,Object? success_count = null,Object? error_count = null,}) {
  return _then(_BulkCreateResultModel(
created: null == created ? _self._created : created // ignore: cast_nullable_to_non_nullable
as List<ProcedureModel>,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,success_count: null == success_count ? _self.success_count : success_count // ignore: cast_nullable_to_non_nullable
as int,error_count: null == error_count ? _self.error_count : error_count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
