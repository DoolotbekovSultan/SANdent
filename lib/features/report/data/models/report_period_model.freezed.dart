// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_period_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportPeriodModel {

 String? get start_date; String? get end_date; int get days;
/// Create a copy of ReportPeriodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<ReportPeriodModel> get copyWith => _$ReportPeriodModelCopyWithImpl<ReportPeriodModel>(this as ReportPeriodModel, _$identity);

  /// Serializes this ReportPeriodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportPeriodModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPeriodModel&&(identical(other.start_date, _this.start_date) || other.start_date == _this.start_date)&&(identical(other.end_date, _this.end_date) || other.end_date == _this.end_date)&&(identical(other.days, _this.days) || other.days == _this.days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportPeriodModel;
  return Object.hash(runtimeType,_this.start_date,_this.end_date,_this.days);
}

@override
String toString() {
  final _this = this as ReportPeriodModel;
  return 'ReportPeriodModel(start_date: ${_this.start_date}, end_date: ${_this.end_date}, days: ${_this.days})';
}


}

/// @nodoc
abstract mixin class $ReportPeriodModelCopyWith<$Res>  {
  factory $ReportPeriodModelCopyWith(ReportPeriodModel value, $Res Function(ReportPeriodModel) _then) = _$ReportPeriodModelCopyWithImpl;
@useResult
$Res call({
 String? start_date, String? end_date, int days
});




}
/// @nodoc
class _$ReportPeriodModelCopyWithImpl<$Res>
    implements $ReportPeriodModelCopyWith<$Res> {
  _$ReportPeriodModelCopyWithImpl(this._self, this._then);

  final ReportPeriodModel _self;
  final $Res Function(ReportPeriodModel) _then;

/// Create a copy of ReportPeriodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start_date = freezed,Object? end_date = freezed,Object? days = null,}) {
  return _then(ReportPeriodModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,end_date: freezed == end_date ? _self.end_date : end_date // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPeriodModel].
extension ReportPeriodModelPatterns on ReportPeriodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPeriodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPeriodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPeriodModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportPeriodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPeriodModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPeriodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start_date,  String? end_date,  int days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPeriodModel() when $default != null:
return $default(_that.start_date,_that.end_date,_that.days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start_date,  String? end_date,  int days)  $default,) {final _that = this;
switch (_that) {
case _ReportPeriodModel():
return $default(_that.start_date,_that.end_date,_that.days);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start_date,  String? end_date,  int days)?  $default,) {final _that = this;
switch (_that) {
case _ReportPeriodModel() when $default != null:
return $default(_that.start_date,_that.end_date,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportPeriodModel implements ReportPeriodModel {
  const _ReportPeriodModel({required this.start_date, required this.end_date, required this.days});
  factory _ReportPeriodModel.fromJson(Map<String, dynamic> json) => _$ReportPeriodModelFromJson(json);

@override final  String? start_date;
@override final  String? end_date;
@override final  int days;

/// Create a copy of ReportPeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPeriodModelCopyWith<_ReportPeriodModel> get copyWith => __$ReportPeriodModelCopyWithImpl<_ReportPeriodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportPeriodModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPeriodModel&&(identical(other.start_date, start_date) || other.start_date == start_date)&&(identical(other.end_date, end_date) || other.end_date == end_date)&&(identical(other.days, days) || other.days == days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,start_date,end_date,days);
}

@override
String toString() {
    return 'ReportPeriodModel(start_date: $start_date, end_date: $end_date, days: $days)';
}


}

/// @nodoc
abstract mixin class _$ReportPeriodModelCopyWith<$Res> implements $ReportPeriodModelCopyWith<$Res> {
  factory _$ReportPeriodModelCopyWith(_ReportPeriodModel value, $Res Function(_ReportPeriodModel) _then) = __$ReportPeriodModelCopyWithImpl;
@override @useResult
$Res call({
 String? start_date, String? end_date, int days
});




}
/// @nodoc
class __$ReportPeriodModelCopyWithImpl<$Res>
    implements _$ReportPeriodModelCopyWith<$Res> {
  __$ReportPeriodModelCopyWithImpl(this._self, this._then);

  final _ReportPeriodModel _self;
  final $Res Function(_ReportPeriodModel) _then;

/// Create a copy of ReportPeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start_date = freezed,Object? end_date = freezed,Object? days = null,}) {
  return _then(_ReportPeriodModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,end_date: freezed == end_date ? _self.end_date : end_date // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
