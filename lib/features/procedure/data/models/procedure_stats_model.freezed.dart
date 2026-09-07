// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcedureStatsModel {

 int get usage_count; num get total_revenue; String? get last_used;
/// Create a copy of ProcedureStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureStatsModelCopyWith<ProcedureStatsModel> get copyWith => _$ProcedureStatsModelCopyWithImpl<ProcedureStatsModel>(this as ProcedureStatsModel, _$identity);

  /// Serializes this ProcedureStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProcedureStatsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureStatsModel&&(identical(other.usage_count, _this.usage_count) || other.usage_count == _this.usage_count)&&(identical(other.total_revenue, _this.total_revenue) || other.total_revenue == _this.total_revenue)&&(identical(other.last_used, _this.last_used) || other.last_used == _this.last_used));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProcedureStatsModel;
  return Object.hash(runtimeType,_this.usage_count,_this.total_revenue,_this.last_used);
}

@override
String toString() {
  final _this = this as ProcedureStatsModel;
  return 'ProcedureStatsModel(usage_count: ${_this.usage_count}, total_revenue: ${_this.total_revenue}, last_used: ${_this.last_used})';
}


}

/// @nodoc
abstract mixin class $ProcedureStatsModelCopyWith<$Res>  {
  factory $ProcedureStatsModelCopyWith(ProcedureStatsModel value, $Res Function(ProcedureStatsModel) _then) = _$ProcedureStatsModelCopyWithImpl;
@useResult
$Res call({
 int usage_count, num total_revenue, String? last_used
});




}
/// @nodoc
class _$ProcedureStatsModelCopyWithImpl<$Res>
    implements $ProcedureStatsModelCopyWith<$Res> {
  _$ProcedureStatsModelCopyWithImpl(this._self, this._then);

  final ProcedureStatsModel _self;
  final $Res Function(ProcedureStatsModel) _then;

/// Create a copy of ProcedureStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usage_count = null,Object? total_revenue = null,Object? last_used = freezed,}) {
  return _then(ProcedureStatsModel(
usage_count: null == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int,total_revenue: null == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as num,last_used: freezed == last_used ? _self.last_used : last_used // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureStatsModel].
extension ProcedureStatsModelPatterns on ProcedureStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int usage_count,  num total_revenue,  String? last_used)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureStatsModel() when $default != null:
return $default(_that.usage_count,_that.total_revenue,_that.last_used);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int usage_count,  num total_revenue,  String? last_used)  $default,) {final _that = this;
switch (_that) {
case _ProcedureStatsModel():
return $default(_that.usage_count,_that.total_revenue,_that.last_used);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int usage_count,  num total_revenue,  String? last_used)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureStatsModel() when $default != null:
return $default(_that.usage_count,_that.total_revenue,_that.last_used);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProcedureStatsModel implements ProcedureStatsModel {
  const _ProcedureStatsModel({required this.usage_count, required this.total_revenue, required this.last_used});
  factory _ProcedureStatsModel.fromJson(Map<String, dynamic> json) => _$ProcedureStatsModelFromJson(json);

@override final  int usage_count;
@override final  num total_revenue;
@override final  String? last_used;

/// Create a copy of ProcedureStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureStatsModelCopyWith<_ProcedureStatsModel> get copyWith => __$ProcedureStatsModelCopyWithImpl<_ProcedureStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProcedureStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureStatsModel&&(identical(other.usage_count, usage_count) || other.usage_count == usage_count)&&(identical(other.total_revenue, total_revenue) || other.total_revenue == total_revenue)&&(identical(other.last_used, last_used) || other.last_used == last_used));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,usage_count,total_revenue,last_used);
}

@override
String toString() {
    return 'ProcedureStatsModel(usage_count: $usage_count, total_revenue: $total_revenue, last_used: $last_used)';
}


}

/// @nodoc
abstract mixin class _$ProcedureStatsModelCopyWith<$Res> implements $ProcedureStatsModelCopyWith<$Res> {
  factory _$ProcedureStatsModelCopyWith(_ProcedureStatsModel value, $Res Function(_ProcedureStatsModel) _then) = __$ProcedureStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int usage_count, num total_revenue, String? last_used
});




}
/// @nodoc
class __$ProcedureStatsModelCopyWithImpl<$Res>
    implements _$ProcedureStatsModelCopyWith<$Res> {
  __$ProcedureStatsModelCopyWithImpl(this._self, this._then);

  final _ProcedureStatsModel _self;
  final $Res Function(_ProcedureStatsModel) _then;

/// Create a copy of ProcedureStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usage_count = null,Object? total_revenue = null,Object? last_used = freezed,}) {
  return _then(_ProcedureStatsModel(
usage_count: null == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int,total_revenue: null == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as num,last_used: freezed == last_used ? _self.last_used : last_used // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
