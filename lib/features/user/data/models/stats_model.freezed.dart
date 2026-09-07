// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatsModel {

 int get total; List<ByRoleStatModel>? get by_role; int get active; int get inactive; List<Map<String, dynamic>>? get by_clinic; int get created_today; int get created_this_week; int get created_this_month;
/// Create a copy of StatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsModelCopyWith<StatsModel> get copyWith => _$StatsModelCopyWithImpl<StatsModel>(this as StatsModel, _$identity);

  /// Serializes this StatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StatsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsModel&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.by_role, _this.by_role)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.inactive, _this.inactive) || other.inactive == _this.inactive)&&const DeepCollectionEquality().equals(other.by_clinic, _this.by_clinic)&&(identical(other.created_today, _this.created_today) || other.created_today == _this.created_today)&&(identical(other.created_this_week, _this.created_this_week) || other.created_this_week == _this.created_this_week)&&(identical(other.created_this_month, _this.created_this_month) || other.created_this_month == _this.created_this_month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StatsModel;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.by_role),_this.active,_this.inactive,const DeepCollectionEquality().hash(_this.by_clinic),_this.created_today,_this.created_this_week,_this.created_this_month);
}

@override
String toString() {
  final _this = this as StatsModel;
  return 'StatsModel(total: ${_this.total}, by_role: ${_this.by_role}, active: ${_this.active}, inactive: ${_this.inactive}, by_clinic: ${_this.by_clinic}, created_today: ${_this.created_today}, created_this_week: ${_this.created_this_week}, created_this_month: ${_this.created_this_month})';
}


}

/// @nodoc
abstract mixin class $StatsModelCopyWith<$Res>  {
  factory $StatsModelCopyWith(StatsModel value, $Res Function(StatsModel) _then) = _$StatsModelCopyWithImpl;
@useResult
$Res call({
 int total, List<ByRoleStatModel>? by_role, int active, int inactive, List<Map<String, dynamic>>? by_clinic, int created_today, int created_this_week, int created_this_month
});




}
/// @nodoc
class _$StatsModelCopyWithImpl<$Res>
    implements $StatsModelCopyWith<$Res> {
  _$StatsModelCopyWithImpl(this._self, this._then);

  final StatsModel _self;
  final $Res Function(StatsModel) _then;

/// Create a copy of StatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? by_role = freezed,Object? active = null,Object? inactive = null,Object? by_clinic = freezed,Object? created_today = null,Object? created_this_week = null,Object? created_this_month = null,}) {
  return _then(StatsModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_role: freezed == by_role ? _self.by_role : by_role // ignore: cast_nullable_to_non_nullable
as List<ByRoleStatModel>?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,by_clinic: freezed == by_clinic ? _self.by_clinic : by_clinic // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,created_today: null == created_today ? _self.created_today : created_today // ignore: cast_nullable_to_non_nullable
as int,created_this_week: null == created_this_week ? _self.created_this_week : created_this_week // ignore: cast_nullable_to_non_nullable
as int,created_this_month: null == created_this_month ? _self.created_this_month : created_this_month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsModel].
extension StatsModelPatterns on StatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsModel value)  $default,){
final _that = this;
switch (_that) {
case _StatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<ByRoleStatModel>? by_role,  int active,  int inactive,  List<Map<String, dynamic>>? by_clinic,  int created_today,  int created_this_week,  int created_this_month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsModel() when $default != null:
return $default(_that.total,_that.by_role,_that.active,_that.inactive,_that.by_clinic,_that.created_today,_that.created_this_week,_that.created_this_month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<ByRoleStatModel>? by_role,  int active,  int inactive,  List<Map<String, dynamic>>? by_clinic,  int created_today,  int created_this_week,  int created_this_month)  $default,) {final _that = this;
switch (_that) {
case _StatsModel():
return $default(_that.total,_that.by_role,_that.active,_that.inactive,_that.by_clinic,_that.created_today,_that.created_this_week,_that.created_this_month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<ByRoleStatModel>? by_role,  int active,  int inactive,  List<Map<String, dynamic>>? by_clinic,  int created_today,  int created_this_week,  int created_this_month)?  $default,) {final _that = this;
switch (_that) {
case _StatsModel() when $default != null:
return $default(_that.total,_that.by_role,_that.active,_that.inactive,_that.by_clinic,_that.created_today,_that.created_this_week,_that.created_this_month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsModel implements StatsModel {
  const _StatsModel({required this.total, required  List<ByRoleStatModel>? by_role, required this.active, required this.inactive, required  List<Map<String, dynamic>>? by_clinic, required this.created_today, required this.created_this_week, required this.created_this_month}): _by_role = by_role,_by_clinic = by_clinic;
  factory _StatsModel.fromJson(Map<String, dynamic> json) => _$StatsModelFromJson(json);

@override final  int total;
 final  List<ByRoleStatModel>? _by_role;
@override List<ByRoleStatModel>? get by_role {
  final value = _by_role;
  if (value == null) return null;
  if (_by_role is EqualUnmodifiableListView) return _by_role;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int active;
@override final  int inactive;
 final  List<Map<String, dynamic>>? _by_clinic;
@override List<Map<String, dynamic>>? get by_clinic {
  final value = _by_clinic;
  if (value == null) return null;
  if (_by_clinic is EqualUnmodifiableListView) return _by_clinic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int created_today;
@override final  int created_this_week;
@override final  int created_this_month;

/// Create a copy of StatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsModelCopyWith<_StatsModel> get copyWith => __$StatsModelCopyWithImpl<_StatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsModel&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.by_role, _by_role)&&(identical(other.active, active) || other.active == active)&&(identical(other.inactive, inactive) || other.inactive == inactive)&&const DeepCollectionEquality().equals(other.by_clinic, _by_clinic)&&(identical(other.created_today, created_today) || other.created_today == created_today)&&(identical(other.created_this_week, created_this_week) || other.created_this_week == created_this_week)&&(identical(other.created_this_month, created_this_month) || other.created_this_month == created_this_month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_by_role),active,inactive,const DeepCollectionEquality().hash(_by_clinic),created_today,created_this_week,created_this_month);
}

@override
String toString() {
    return 'StatsModel(total: $total, by_role: $by_role, active: $active, inactive: $inactive, by_clinic: $by_clinic, created_today: $created_today, created_this_week: $created_this_week, created_this_month: $created_this_month)';
}


}

/// @nodoc
abstract mixin class _$StatsModelCopyWith<$Res> implements $StatsModelCopyWith<$Res> {
  factory _$StatsModelCopyWith(_StatsModel value, $Res Function(_StatsModel) _then) = __$StatsModelCopyWithImpl;
@override @useResult
$Res call({
 int total, List<ByRoleStatModel>? by_role, int active, int inactive, List<Map<String, dynamic>>? by_clinic, int created_today, int created_this_week, int created_this_month
});




}
/// @nodoc
class __$StatsModelCopyWithImpl<$Res>
    implements _$StatsModelCopyWith<$Res> {
  __$StatsModelCopyWithImpl(this._self, this._then);

  final _StatsModel _self;
  final $Res Function(_StatsModel) _then;

/// Create a copy of StatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? by_role = freezed,Object? active = null,Object? inactive = null,Object? by_clinic = freezed,Object? created_today = null,Object? created_this_week = null,Object? created_this_month = null,}) {
  return _then(_StatsModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,by_role: freezed == by_role ? _self._by_role : by_role // ignore: cast_nullable_to_non_nullable
as List<ByRoleStatModel>?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,by_clinic: freezed == by_clinic ? _self._by_clinic : by_clinic // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,created_today: null == created_today ? _self.created_today : created_today // ignore: cast_nullable_to_non_nullable
as int,created_this_week: null == created_this_week ? _self.created_this_week : created_this_week // ignore: cast_nullable_to_non_nullable
as int,created_this_month: null == created_this_month ? _self.created_this_month : created_this_month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ByRoleStatModel {

 String get role; int get count;
/// Create a copy of ByRoleStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByRoleStatModelCopyWith<ByRoleStatModel> get copyWith => _$ByRoleStatModelCopyWithImpl<ByRoleStatModel>(this as ByRoleStatModel, _$identity);

  /// Serializes this ByRoleStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ByRoleStatModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByRoleStatModel&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ByRoleStatModel;
  return Object.hash(runtimeType,_this.role,_this.count);
}

@override
String toString() {
  final _this = this as ByRoleStatModel;
  return 'ByRoleStatModel(role: ${_this.role}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $ByRoleStatModelCopyWith<$Res>  {
  factory $ByRoleStatModelCopyWith(ByRoleStatModel value, $Res Function(ByRoleStatModel) _then) = _$ByRoleStatModelCopyWithImpl;
@useResult
$Res call({
 String role, int count
});




}
/// @nodoc
class _$ByRoleStatModelCopyWithImpl<$Res>
    implements $ByRoleStatModelCopyWith<$Res> {
  _$ByRoleStatModelCopyWithImpl(this._self, this._then);

  final ByRoleStatModel _self;
  final $Res Function(ByRoleStatModel) _then;

/// Create a copy of ByRoleStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? count = null,}) {
  return _then(ByRoleStatModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ByRoleStatModel].
extension ByRoleStatModelPatterns on ByRoleStatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ByRoleStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ByRoleStatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ByRoleStatModel value)  $default,){
final _that = this;
switch (_that) {
case _ByRoleStatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ByRoleStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _ByRoleStatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ByRoleStatModel() when $default != null:
return $default(_that.role,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  int count)  $default,) {final _that = this;
switch (_that) {
case _ByRoleStatModel():
return $default(_that.role,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  int count)?  $default,) {final _that = this;
switch (_that) {
case _ByRoleStatModel() when $default != null:
return $default(_that.role,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ByRoleStatModel implements ByRoleStatModel {
  const _ByRoleStatModel({required this.role, required this.count});
  factory _ByRoleStatModel.fromJson(Map<String, dynamic> json) => _$ByRoleStatModelFromJson(json);

@override final  String role;
@override final  int count;

/// Create a copy of ByRoleStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ByRoleStatModelCopyWith<_ByRoleStatModel> get copyWith => __$ByRoleStatModelCopyWithImpl<_ByRoleStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ByRoleStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ByRoleStatModel&&(identical(other.role, role) || other.role == role)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,role,count);
}

@override
String toString() {
    return 'ByRoleStatModel(role: $role, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ByRoleStatModelCopyWith<$Res> implements $ByRoleStatModelCopyWith<$Res> {
  factory _$ByRoleStatModelCopyWith(_ByRoleStatModel value, $Res Function(_ByRoleStatModel) _then) = __$ByRoleStatModelCopyWithImpl;
@override @useResult
$Res call({
 String role, int count
});




}
/// @nodoc
class __$ByRoleStatModelCopyWithImpl<$Res>
    implements _$ByRoleStatModelCopyWith<$Res> {
  __$ByRoleStatModelCopyWithImpl(this._self, this._then);

  final _ByRoleStatModel _self;
  final $Res Function(_ByRoleStatModel) _then;

/// Create a copy of ByRoleStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? count = null,}) {
  return _then(_ByRoleStatModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
