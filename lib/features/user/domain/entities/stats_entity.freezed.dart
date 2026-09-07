// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatsEntity {

 int get total; List<ByRoleStatEntity> get byRole; int get active; int get inactive; List<Map<String, dynamic>> get byClinic; int get createdToday; int get createdThisWeek; int get createdThisMonth;
/// Create a copy of StatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsEntityCopyWith<StatsEntity> get copyWith => _$StatsEntityCopyWithImpl<StatsEntity>(this as StatsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StatsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsEntity&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.byRole, _this.byRole)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.inactive, _this.inactive) || other.inactive == _this.inactive)&&const DeepCollectionEquality().equals(other.byClinic, _this.byClinic)&&(identical(other.createdToday, _this.createdToday) || other.createdToday == _this.createdToday)&&(identical(other.createdThisWeek, _this.createdThisWeek) || other.createdThisWeek == _this.createdThisWeek)&&(identical(other.createdThisMonth, _this.createdThisMonth) || other.createdThisMonth == _this.createdThisMonth));
}


@override
int get hashCode {
  final _this = this as StatsEntity;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.byRole),_this.active,_this.inactive,const DeepCollectionEquality().hash(_this.byClinic),_this.createdToday,_this.createdThisWeek,_this.createdThisMonth);
}

@override
String toString() {
  final _this = this as StatsEntity;
  return 'StatsEntity(total: ${_this.total}, byRole: ${_this.byRole}, active: ${_this.active}, inactive: ${_this.inactive}, byClinic: ${_this.byClinic}, createdToday: ${_this.createdToday}, createdThisWeek: ${_this.createdThisWeek}, createdThisMonth: ${_this.createdThisMonth})';
}


}

/// @nodoc
abstract mixin class $StatsEntityCopyWith<$Res>  {
  factory $StatsEntityCopyWith(StatsEntity value, $Res Function(StatsEntity) _then) = _$StatsEntityCopyWithImpl;
@useResult
$Res call({
 int total, List<ByRoleStatEntity> byRole, int active, int inactive, List<Map<String, dynamic>> byClinic, int createdToday, int createdThisWeek, int createdThisMonth
});




}
/// @nodoc
class _$StatsEntityCopyWithImpl<$Res>
    implements $StatsEntityCopyWith<$Res> {
  _$StatsEntityCopyWithImpl(this._self, this._then);

  final StatsEntity _self;
  final $Res Function(StatsEntity) _then;

/// Create a copy of StatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? byRole = null,Object? active = null,Object? inactive = null,Object? byClinic = null,Object? createdToday = null,Object? createdThisWeek = null,Object? createdThisMonth = null,}) {
  return _then(StatsEntity(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byRole: null == byRole ? _self.byRole : byRole // ignore: cast_nullable_to_non_nullable
as List<ByRoleStatEntity>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,byClinic: null == byClinic ? _self.byClinic : byClinic // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,createdToday: null == createdToday ? _self.createdToday : createdToday // ignore: cast_nullable_to_non_nullable
as int,createdThisWeek: null == createdThisWeek ? _self.createdThisWeek : createdThisWeek // ignore: cast_nullable_to_non_nullable
as int,createdThisMonth: null == createdThisMonth ? _self.createdThisMonth : createdThisMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsEntity].
extension StatsEntityPatterns on StatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _StatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<ByRoleStatEntity> byRole,  int active,  int inactive,  List<Map<String, dynamic>> byClinic,  int createdToday,  int createdThisWeek,  int createdThisMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsEntity() when $default != null:
return $default(_that.total,_that.byRole,_that.active,_that.inactive,_that.byClinic,_that.createdToday,_that.createdThisWeek,_that.createdThisMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<ByRoleStatEntity> byRole,  int active,  int inactive,  List<Map<String, dynamic>> byClinic,  int createdToday,  int createdThisWeek,  int createdThisMonth)  $default,) {final _that = this;
switch (_that) {
case _StatsEntity():
return $default(_that.total,_that.byRole,_that.active,_that.inactive,_that.byClinic,_that.createdToday,_that.createdThisWeek,_that.createdThisMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<ByRoleStatEntity> byRole,  int active,  int inactive,  List<Map<String, dynamic>> byClinic,  int createdToday,  int createdThisWeek,  int createdThisMonth)?  $default,) {final _that = this;
switch (_that) {
case _StatsEntity() when $default != null:
return $default(_that.total,_that.byRole,_that.active,_that.inactive,_that.byClinic,_that.createdToday,_that.createdThisWeek,_that.createdThisMonth);case _:
  return null;

}
}

}

/// @nodoc


class _StatsEntity implements StatsEntity {
  const _StatsEntity({required this.total, required  List<ByRoleStatEntity> byRole, required this.active, required this.inactive, required  List<Map<String, dynamic>> byClinic, required this.createdToday, required this.createdThisWeek, required this.createdThisMonth}): _byRole = byRole,_byClinic = byClinic;
  

@override final  int total;
 final  List<ByRoleStatEntity> _byRole;
@override List<ByRoleStatEntity> get byRole {
  if (_byRole is EqualUnmodifiableListView) return _byRole;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byRole);
}

@override final  int active;
@override final  int inactive;
 final  List<Map<String, dynamic>> _byClinic;
@override List<Map<String, dynamic>> get byClinic {
  if (_byClinic is EqualUnmodifiableListView) return _byClinic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byClinic);
}

@override final  int createdToday;
@override final  int createdThisWeek;
@override final  int createdThisMonth;

/// Create a copy of StatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsEntityCopyWith<_StatsEntity> get copyWith => __$StatsEntityCopyWithImpl<_StatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsEntity&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.byRole, _byRole)&&(identical(other.active, active) || other.active == active)&&(identical(other.inactive, inactive) || other.inactive == inactive)&&const DeepCollectionEquality().equals(other.byClinic, _byClinic)&&(identical(other.createdToday, createdToday) || other.createdToday == createdToday)&&(identical(other.createdThisWeek, createdThisWeek) || other.createdThisWeek == createdThisWeek)&&(identical(other.createdThisMonth, createdThisMonth) || other.createdThisMonth == createdThisMonth));
}


@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_byRole),active,inactive,const DeepCollectionEquality().hash(_byClinic),createdToday,createdThisWeek,createdThisMonth);
}

@override
String toString() {
    return 'StatsEntity(total: $total, byRole: $byRole, active: $active, inactive: $inactive, byClinic: $byClinic, createdToday: $createdToday, createdThisWeek: $createdThisWeek, createdThisMonth: $createdThisMonth)';
}


}

/// @nodoc
abstract mixin class _$StatsEntityCopyWith<$Res> implements $StatsEntityCopyWith<$Res> {
  factory _$StatsEntityCopyWith(_StatsEntity value, $Res Function(_StatsEntity) _then) = __$StatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int total, List<ByRoleStatEntity> byRole, int active, int inactive, List<Map<String, dynamic>> byClinic, int createdToday, int createdThisWeek, int createdThisMonth
});




}
/// @nodoc
class __$StatsEntityCopyWithImpl<$Res>
    implements _$StatsEntityCopyWith<$Res> {
  __$StatsEntityCopyWithImpl(this._self, this._then);

  final _StatsEntity _self;
  final $Res Function(_StatsEntity) _then;

/// Create a copy of StatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? byRole = null,Object? active = null,Object? inactive = null,Object? byClinic = null,Object? createdToday = null,Object? createdThisWeek = null,Object? createdThisMonth = null,}) {
  return _then(_StatsEntity(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,byRole: null == byRole ? _self._byRole : byRole // ignore: cast_nullable_to_non_nullable
as List<ByRoleStatEntity>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,inactive: null == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as int,byClinic: null == byClinic ? _self._byClinic : byClinic // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,createdToday: null == createdToday ? _self.createdToday : createdToday // ignore: cast_nullable_to_non_nullable
as int,createdThisWeek: null == createdThisWeek ? _self.createdThisWeek : createdThisWeek // ignore: cast_nullable_to_non_nullable
as int,createdThisMonth: null == createdThisMonth ? _self.createdThisMonth : createdThisMonth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ByRoleStatEntity {

 String get role; int get count;
/// Create a copy of ByRoleStatEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByRoleStatEntityCopyWith<ByRoleStatEntity> get copyWith => _$ByRoleStatEntityCopyWithImpl<ByRoleStatEntity>(this as ByRoleStatEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ByRoleStatEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByRoleStatEntity&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.count, _this.count) || other.count == _this.count));
}


@override
int get hashCode {
  final _this = this as ByRoleStatEntity;
  return Object.hash(runtimeType,_this.role,_this.count);
}

@override
String toString() {
  final _this = this as ByRoleStatEntity;
  return 'ByRoleStatEntity(role: ${_this.role}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $ByRoleStatEntityCopyWith<$Res>  {
  factory $ByRoleStatEntityCopyWith(ByRoleStatEntity value, $Res Function(ByRoleStatEntity) _then) = _$ByRoleStatEntityCopyWithImpl;
@useResult
$Res call({
 String role, int count
});




}
/// @nodoc
class _$ByRoleStatEntityCopyWithImpl<$Res>
    implements $ByRoleStatEntityCopyWith<$Res> {
  _$ByRoleStatEntityCopyWithImpl(this._self, this._then);

  final ByRoleStatEntity _self;
  final $Res Function(ByRoleStatEntity) _then;

/// Create a copy of ByRoleStatEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? count = null,}) {
  return _then(ByRoleStatEntity(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ByRoleStatEntity].
extension ByRoleStatEntityPatterns on ByRoleStatEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ByRoleStatEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ByRoleStatEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ByRoleStatEntity value)  $default,){
final _that = this;
switch (_that) {
case _ByRoleStatEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ByRoleStatEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ByRoleStatEntity() when $default != null:
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
case _ByRoleStatEntity() when $default != null:
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
case _ByRoleStatEntity():
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
case _ByRoleStatEntity() when $default != null:
return $default(_that.role,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _ByRoleStatEntity implements ByRoleStatEntity {
  const _ByRoleStatEntity({required this.role, required this.count});
  

@override final  String role;
@override final  int count;

/// Create a copy of ByRoleStatEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ByRoleStatEntityCopyWith<_ByRoleStatEntity> get copyWith => __$ByRoleStatEntityCopyWithImpl<_ByRoleStatEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ByRoleStatEntity&&(identical(other.role, role) || other.role == role)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode {
    return Object.hash(runtimeType,role,count);
}

@override
String toString() {
    return 'ByRoleStatEntity(role: $role, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ByRoleStatEntityCopyWith<$Res> implements $ByRoleStatEntityCopyWith<$Res> {
  factory _$ByRoleStatEntityCopyWith(_ByRoleStatEntity value, $Res Function(_ByRoleStatEntity) _then) = __$ByRoleStatEntityCopyWithImpl;
@override @useResult
$Res call({
 String role, int count
});




}
/// @nodoc
class __$ByRoleStatEntityCopyWithImpl<$Res>
    implements _$ByRoleStatEntityCopyWith<$Res> {
  __$ByRoleStatEntityCopyWithImpl(this._self, this._then);

  final _ByRoleStatEntity _self;
  final $Res Function(_ByRoleStatEntity) _then;

/// Create a copy of ByRoleStatEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? count = null,}) {
  return _then(_ByRoleStatEntity(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
