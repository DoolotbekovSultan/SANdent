// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProcedureStatsEntity {

 int get usageCount; num get totalRevenue; String? get lastUsed;
/// Create a copy of ProcedureStatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureStatsEntityCopyWith<ProcedureStatsEntity> get copyWith => _$ProcedureStatsEntityCopyWithImpl<ProcedureStatsEntity>(this as ProcedureStatsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProcedureStatsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureStatsEntity&&(identical(other.usageCount, _this.usageCount) || other.usageCount == _this.usageCount)&&(identical(other.totalRevenue, _this.totalRevenue) || other.totalRevenue == _this.totalRevenue)&&(identical(other.lastUsed, _this.lastUsed) || other.lastUsed == _this.lastUsed));
}


@override
int get hashCode {
  final _this = this as ProcedureStatsEntity;
  return Object.hash(runtimeType,_this.usageCount,_this.totalRevenue,_this.lastUsed);
}

@override
String toString() {
  final _this = this as ProcedureStatsEntity;
  return 'ProcedureStatsEntity(usageCount: ${_this.usageCount}, totalRevenue: ${_this.totalRevenue}, lastUsed: ${_this.lastUsed})';
}


}

/// @nodoc
abstract mixin class $ProcedureStatsEntityCopyWith<$Res>  {
  factory $ProcedureStatsEntityCopyWith(ProcedureStatsEntity value, $Res Function(ProcedureStatsEntity) _then) = _$ProcedureStatsEntityCopyWithImpl;
@useResult
$Res call({
 int usageCount, num totalRevenue, String? lastUsed
});




}
/// @nodoc
class _$ProcedureStatsEntityCopyWithImpl<$Res>
    implements $ProcedureStatsEntityCopyWith<$Res> {
  _$ProcedureStatsEntityCopyWithImpl(this._self, this._then);

  final ProcedureStatsEntity _self;
  final $Res Function(ProcedureStatsEntity) _then;

/// Create a copy of ProcedureStatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usageCount = null,Object? totalRevenue = null,Object? lastUsed = freezed,}) {
  return _then(ProcedureStatsEntity(
usageCount: null == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as num,lastUsed: freezed == lastUsed ? _self.lastUsed : lastUsed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureStatsEntity].
extension ProcedureStatsEntityPatterns on ProcedureStatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureStatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureStatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureStatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureStatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureStatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureStatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int usageCount,  num totalRevenue,  String? lastUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureStatsEntity() when $default != null:
return $default(_that.usageCount,_that.totalRevenue,_that.lastUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int usageCount,  num totalRevenue,  String? lastUsed)  $default,) {final _that = this;
switch (_that) {
case _ProcedureStatsEntity():
return $default(_that.usageCount,_that.totalRevenue,_that.lastUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int usageCount,  num totalRevenue,  String? lastUsed)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureStatsEntity() when $default != null:
return $default(_that.usageCount,_that.totalRevenue,_that.lastUsed);case _:
  return null;

}
}

}

/// @nodoc


class _ProcedureStatsEntity implements ProcedureStatsEntity {
  const _ProcedureStatsEntity({required this.usageCount, required this.totalRevenue, required this.lastUsed});
  

@override final  int usageCount;
@override final  num totalRevenue;
@override final  String? lastUsed;

/// Create a copy of ProcedureStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureStatsEntityCopyWith<_ProcedureStatsEntity> get copyWith => __$ProcedureStatsEntityCopyWithImpl<_ProcedureStatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureStatsEntity&&(identical(other.usageCount, usageCount) || other.usageCount == usageCount)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.lastUsed, lastUsed) || other.lastUsed == lastUsed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,usageCount,totalRevenue,lastUsed);
}

@override
String toString() {
    return 'ProcedureStatsEntity(usageCount: $usageCount, totalRevenue: $totalRevenue, lastUsed: $lastUsed)';
}


}

/// @nodoc
abstract mixin class _$ProcedureStatsEntityCopyWith<$Res> implements $ProcedureStatsEntityCopyWith<$Res> {
  factory _$ProcedureStatsEntityCopyWith(_ProcedureStatsEntity value, $Res Function(_ProcedureStatsEntity) _then) = __$ProcedureStatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int usageCount, num totalRevenue, String? lastUsed
});




}
/// @nodoc
class __$ProcedureStatsEntityCopyWithImpl<$Res>
    implements _$ProcedureStatsEntityCopyWith<$Res> {
  __$ProcedureStatsEntityCopyWithImpl(this._self, this._then);

  final _ProcedureStatsEntity _self;
  final $Res Function(_ProcedureStatsEntity) _then;

/// Create a copy of ProcedureStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usageCount = null,Object? totalRevenue = null,Object? lastUsed = freezed,}) {
  return _then(_ProcedureStatsEntity(
usageCount: null == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as num,lastUsed: freezed == lastUsed ? _self.lastUsed : lastUsed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
