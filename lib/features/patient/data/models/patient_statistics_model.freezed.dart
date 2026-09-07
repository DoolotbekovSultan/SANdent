// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientStatisticsModel {

 int get total; List<Map<String, dynamic>>? get by_gender; Map<String, dynamic>? get by_age_group; int get new_this_month; int get new_this_week; int get new_today; int get active; int get inactive;
/// Create a copy of PatientStatisticsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientStatisticsModelCopyWith<PatientStatisticsModel> get copyWith => _$PatientStatisticsModelCopyWithImpl<PatientStatisticsModel>(this as PatientStatisticsModel, _$identity);

  /// Serializes this PatientStatisticsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientStatisticsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientStatisticsModel&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.by_gender, _this.by_gender)&&const DeepCollectionEquality().equals(other.by_age_group, _this.by_age_group)&&(identical(other.new_this_month, _this.new_this_month) || other.new_this_month == _this.new_this_month)&&(identical(other.new_this_week, _this.new_this_week) || other.new_this_week == _this.new_this_week)&&(identical(other.new_today, _this.new_today) || other.new_today == _this.new_today)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.inactive, _this.inactive) || other.inactive == _this.inactive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientStatisticsModel;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.by_gender),const DeepCollectionEquality().hash(_this.by_age_group),_this.new_this_month,_this.new_this_week,_this.new_today,_this.active,_this.inactive);
}

@override
String toString() {
  final _this = this as PatientStatisticsModel;
  return 'PatientStatisticsModel(total: ${_this.total}, by_gender: ${_this.by_gender}, by_age_group: ${_this.by_age_group}, new_this_month: ${_this.new_this_month}, new_this_week: ${_this.new_this_week}, new_today: ${_this.new_today}, active: ${_this.active}, inactive: ${_this.inactive})';
}


}

/// @nodoc
abstract mixin class $PatientStatisticsModelCopyWith<$Res>  {
  factory $PatientStatisticsModelCopyWith(PatientStatisticsModel value, $Res Function(PatientStatisticsModel) _then) = _$PatientStatisticsModelCopyWithImpl;
@useResult
$Res call({
 int total, List<Map<String, dynamic>>? by_gender, Map<String, dynamic>? by_age_group, int new_this_month, int new_this_week, int new_today, int active, int inactive
});




}
/// @nodoc
class _$PatientStatisticsModelCopyWithImpl<$Res>
    implements $PatientStatisticsModelCopyWith<$Res> {
  _$PatientStatisticsModelCopyWithImpl(this._self, this._then);

  final PatientStatisticsModel _self;
  final $Res Function(PatientStatisticsModel) _then;

/// Create a copy of PatientStatisticsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? by_gender = freezed,Object? by_age_group = freezed,Object? new_this_month = null,Object? new_this_week = null,Object? new_today = null,Object? active = null,Object? inactive = null,}) {
  return _then(PatientStatisticsModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_gender: freezed == by_gender ? _self.by_gender : by_gender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_age_group: freezed == by_age_group ? _self.by_age_group : by_age_group // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,new_this_month: null == new_this_month ? _self.new_this_month : new_this_month // ignore: cast_nullable_to_non_nullable
as int,new_this_week: null == new_this_week ? _self.new_this_week : new_this_week // ignore: cast_nullable_to_non_nullable
as int,new_today: null == new_today ? _self.new_today : new_today // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientStatisticsModel].
extension PatientStatisticsModelPatterns on PatientStatisticsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientStatisticsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientStatisticsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientStatisticsModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientStatisticsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientStatisticsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientStatisticsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  int new_this_month,  int new_this_week,  int new_today,  int active,  int inactive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientStatisticsModel() when $default != null:
return $default(_that.total,_that.by_gender,_that.by_age_group,_that.new_this_month,_that.new_this_week,_that.new_today,_that.active,_that.inactive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  int new_this_month,  int new_this_week,  int new_today,  int active,  int inactive)  $default,) {final _that = this;
switch (_that) {
case _PatientStatisticsModel():
return $default(_that.total,_that.by_gender,_that.by_age_group,_that.new_this_month,_that.new_this_week,_that.new_today,_that.active,_that.inactive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  int new_this_month,  int new_this_week,  int new_today,  int active,  int inactive)?  $default,) {final _that = this;
switch (_that) {
case _PatientStatisticsModel() when $default != null:
return $default(_that.total,_that.by_gender,_that.by_age_group,_that.new_this_month,_that.new_this_week,_that.new_today,_that.active,_that.inactive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientStatisticsModel implements PatientStatisticsModel {
  const _PatientStatisticsModel({required this.total, required  List<Map<String, dynamic>>? by_gender, required  Map<String, dynamic>? by_age_group, required this.new_this_month, required this.new_this_week, required this.new_today, required this.active, required this.inactive}): _by_gender = by_gender,_by_age_group = by_age_group;
  factory _PatientStatisticsModel.fromJson(Map<String, dynamic> json) => _$PatientStatisticsModelFromJson(json);

@override final  int total;
 final  List<Map<String, dynamic>>? _by_gender;
@override List<Map<String, dynamic>>? get by_gender {
  final value = _by_gender;
  if (value == null) return null;
  if (_by_gender is EqualUnmodifiableListView) return _by_gender;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _by_age_group;
@override Map<String, dynamic>? get by_age_group {
  final value = _by_age_group;
  if (value == null) return null;
  if (_by_age_group is EqualUnmodifiableMapView) return _by_age_group;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int new_this_month;
@override final  int new_this_week;
@override final  int new_today;
@override final  int active;
@override final  int inactive;

/// Create a copy of PatientStatisticsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientStatisticsModelCopyWith<_PatientStatisticsModel> get copyWith => __$PatientStatisticsModelCopyWithImpl<_PatientStatisticsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientStatisticsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientStatisticsModel&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.by_gender, _by_gender)&&const DeepCollectionEquality().equals(other.by_age_group, _by_age_group)&&(identical(other.new_this_month, new_this_month) || other.new_this_month == new_this_month)&&(identical(other.new_this_week, new_this_week) || other.new_this_week == new_this_week)&&(identical(other.new_today, new_today) || other.new_today == new_today)&&(identical(other.active, active) || other.active == active)&&(identical(other.inactive, inactive) || other.inactive == inactive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_by_gender),const DeepCollectionEquality().hash(_by_age_group),new_this_month,new_this_week,new_today,active,inactive);
}

@override
String toString() {
    return 'PatientStatisticsModel(total: $total, by_gender: $by_gender, by_age_group: $by_age_group, new_this_month: $new_this_month, new_this_week: $new_this_week, new_today: $new_today, active: $active, inactive: $inactive)';
}


}

/// @nodoc
abstract mixin class _$PatientStatisticsModelCopyWith<$Res> implements $PatientStatisticsModelCopyWith<$Res> {
  factory _$PatientStatisticsModelCopyWith(_PatientStatisticsModel value, $Res Function(_PatientStatisticsModel) _then) = __$PatientStatisticsModelCopyWithImpl;
@override @useResult
$Res call({
 int total, List<Map<String, dynamic>>? by_gender, Map<String, dynamic>? by_age_group, int new_this_month, int new_this_week, int new_today, int active, int inactive
});




}
/// @nodoc
class __$PatientStatisticsModelCopyWithImpl<$Res>
    implements _$PatientStatisticsModelCopyWith<$Res> {
  __$PatientStatisticsModelCopyWithImpl(this._self, this._then);

  final _PatientStatisticsModel _self;
  final $Res Function(_PatientStatisticsModel) _then;

/// Create a copy of PatientStatisticsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? by_gender = freezed,Object? by_age_group = freezed,Object? new_this_month = null,Object? new_this_week = null,Object? new_today = null,Object? active = null,Object? inactive = null,}) {
  return _then(_PatientStatisticsModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_gender: freezed == by_gender ? _self._by_gender : by_gender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_age_group: freezed == by_age_group ? _self._by_age_group : by_age_group // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,new_this_month: null == new_this_month ? _self.new_this_month : new_this_month // ignore: cast_nullable_to_non_nullable
as int,new_this_week: null == new_this_week ? _self.new_this_week : new_this_week // ignore: cast_nullable_to_non_nullable
as int,new_today: null == new_today ? _self.new_today : new_today // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
