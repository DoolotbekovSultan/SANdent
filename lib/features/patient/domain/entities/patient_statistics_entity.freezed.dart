// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_statistics_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientStatisticsEntity {

 int get total; List<Map<String, dynamic>> get byGender; Map<String, dynamic> get byAgeGroup; int get newThisMonth; int get newThisWeek; int get newToday; int get active; int get inactive;
/// Create a copy of PatientStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientStatisticsEntityCopyWith<PatientStatisticsEntity> get copyWith => _$PatientStatisticsEntityCopyWithImpl<PatientStatisticsEntity>(this as PatientStatisticsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientStatisticsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientStatisticsEntity&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.byGender, _this.byGender)&&const DeepCollectionEquality().equals(other.byAgeGroup, _this.byAgeGroup)&&(identical(other.newThisMonth, _this.newThisMonth) || other.newThisMonth == _this.newThisMonth)&&(identical(other.newThisWeek, _this.newThisWeek) || other.newThisWeek == _this.newThisWeek)&&(identical(other.newToday, _this.newToday) || other.newToday == _this.newToday)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.inactive, _this.inactive) || other.inactive == _this.inactive));
}


@override
int get hashCode {
  final _this = this as PatientStatisticsEntity;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.byGender),const DeepCollectionEquality().hash(_this.byAgeGroup),_this.newThisMonth,_this.newThisWeek,_this.newToday,_this.active,_this.inactive);
}

@override
String toString() {
  final _this = this as PatientStatisticsEntity;
  return 'PatientStatisticsEntity(total: ${_this.total}, byGender: ${_this.byGender}, byAgeGroup: ${_this.byAgeGroup}, newThisMonth: ${_this.newThisMonth}, newThisWeek: ${_this.newThisWeek}, newToday: ${_this.newToday}, active: ${_this.active}, inactive: ${_this.inactive})';
}


}

/// @nodoc
abstract mixin class $PatientStatisticsEntityCopyWith<$Res>  {
  factory $PatientStatisticsEntityCopyWith(PatientStatisticsEntity value, $Res Function(PatientStatisticsEntity) _then) = _$PatientStatisticsEntityCopyWithImpl;
@useResult
$Res call({
 int total, List<Map<String, dynamic>> byGender, Map<String, dynamic> byAgeGroup, int newThisMonth, int newThisWeek, int newToday, int active, int inactive
});




}
/// @nodoc
class _$PatientStatisticsEntityCopyWithImpl<$Res>
    implements $PatientStatisticsEntityCopyWith<$Res> {
  _$PatientStatisticsEntityCopyWithImpl(this._self, this._then);

  final PatientStatisticsEntity _self;
  final $Res Function(PatientStatisticsEntity) _then;

/// Create a copy of PatientStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? byGender = null,Object? byAgeGroup = null,Object? newThisMonth = null,Object? newThisWeek = null,Object? newToday = null,Object? active = null,Object? inactive = null,}) {
  return _then(PatientStatisticsEntity(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byGender: null == byGender ? _self.byGender : byGender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byAgeGroup: null == byAgeGroup ? _self.byAgeGroup : byAgeGroup // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,newThisMonth: null == newThisMonth ? _self.newThisMonth : newThisMonth // ignore: cast_nullable_to_non_nullable
as int,newThisWeek: null == newThisWeek ? _self.newThisWeek : newThisWeek // ignore: cast_nullable_to_non_nullable
as int,newToday: null == newToday ? _self.newToday : newToday // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientStatisticsEntity].
extension PatientStatisticsEntityPatterns on PatientStatisticsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientStatisticsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientStatisticsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientStatisticsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientStatisticsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientStatisticsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientStatisticsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  int newThisMonth,  int newThisWeek,  int newToday,  int active,  int inactive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientStatisticsEntity() when $default != null:
return $default(_that.total,_that.byGender,_that.byAgeGroup,_that.newThisMonth,_that.newThisWeek,_that.newToday,_that.active,_that.inactive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  int newThisMonth,  int newThisWeek,  int newToday,  int active,  int inactive)  $default,) {final _that = this;
switch (_that) {
case _PatientStatisticsEntity():
return $default(_that.total,_that.byGender,_that.byAgeGroup,_that.newThisMonth,_that.newThisWeek,_that.newToday,_that.active,_that.inactive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  int newThisMonth,  int newThisWeek,  int newToday,  int active,  int inactive)?  $default,) {final _that = this;
switch (_that) {
case _PatientStatisticsEntity() when $default != null:
return $default(_that.total,_that.byGender,_that.byAgeGroup,_that.newThisMonth,_that.newThisWeek,_that.newToday,_that.active,_that.inactive);case _:
  return null;

}
}

}

/// @nodoc


class _PatientStatisticsEntity implements PatientStatisticsEntity {
  const _PatientStatisticsEntity({required this.total, required  List<Map<String, dynamic>> byGender, required  Map<String, dynamic> byAgeGroup, required this.newThisMonth, required this.newThisWeek, required this.newToday, required this.active, required this.inactive}): _byGender = byGender,_byAgeGroup = byAgeGroup;
  

@override final  int total;
 final  List<Map<String, dynamic>> _byGender;
@override List<Map<String, dynamic>> get byGender {
  if (_byGender is EqualUnmodifiableListView) return _byGender;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byGender);
}

 final  Map<String, dynamic> _byAgeGroup;
@override Map<String, dynamic> get byAgeGroup {
  if (_byAgeGroup is EqualUnmodifiableMapView) return _byAgeGroup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byAgeGroup);
}

@override final  int newThisMonth;
@override final  int newThisWeek;
@override final  int newToday;
@override final  int active;
@override final  int inactive;

/// Create a copy of PatientStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientStatisticsEntityCopyWith<_PatientStatisticsEntity> get copyWith => __$PatientStatisticsEntityCopyWithImpl<_PatientStatisticsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientStatisticsEntity&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.byGender, _byGender)&&const DeepCollectionEquality().equals(other.byAgeGroup, _byAgeGroup)&&(identical(other.newThisMonth, newThisMonth) || other.newThisMonth == newThisMonth)&&(identical(other.newThisWeek, newThisWeek) || other.newThisWeek == newThisWeek)&&(identical(other.newToday, newToday) || other.newToday == newToday)&&(identical(other.active, active) || other.active == active)&&(identical(other.inactive, inactive) || other.inactive == inactive));
}


@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_byGender),const DeepCollectionEquality().hash(_byAgeGroup),newThisMonth,newThisWeek,newToday,active,inactive);
}

@override
String toString() {
    return 'PatientStatisticsEntity(total: $total, byGender: $byGender, byAgeGroup: $byAgeGroup, newThisMonth: $newThisMonth, newThisWeek: $newThisWeek, newToday: $newToday, active: $active, inactive: $inactive)';
}


}

/// @nodoc
abstract mixin class _$PatientStatisticsEntityCopyWith<$Res> implements $PatientStatisticsEntityCopyWith<$Res> {
  factory _$PatientStatisticsEntityCopyWith(_PatientStatisticsEntity value, $Res Function(_PatientStatisticsEntity) _then) = __$PatientStatisticsEntityCopyWithImpl;
@override @useResult
$Res call({
 int total, List<Map<String, dynamic>> byGender, Map<String, dynamic> byAgeGroup, int newThisMonth, int newThisWeek, int newToday, int active, int inactive
});




}
/// @nodoc
class __$PatientStatisticsEntityCopyWithImpl<$Res>
    implements _$PatientStatisticsEntityCopyWith<$Res> {
  __$PatientStatisticsEntityCopyWithImpl(this._self, this._then);

  final _PatientStatisticsEntity _self;
  final $Res Function(_PatientStatisticsEntity) _then;

/// Create a copy of PatientStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? byGender = null,Object? byAgeGroup = null,Object? newThisMonth = null,Object? newThisWeek = null,Object? newToday = null,Object? active = null,Object? inactive = null,}) {
  return _then(_PatientStatisticsEntity(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byGender: null == byGender ? _self._byGender : byGender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byAgeGroup: null == byAgeGroup ? _self._byAgeGroup : byAgeGroup // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,newThisMonth: null == newThisMonth ? _self.newThisMonth : newThisMonth // ignore: cast_nullable_to_non_nullable
as int,newThisWeek: null == newThisWeek ? _self.newThisWeek : newThisWeek // ignore: cast_nullable_to_non_nullable
as int,newToday: null == newToday ? _self.newToday : newToday // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
