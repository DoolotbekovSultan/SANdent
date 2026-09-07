// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialEntity {

 int get id; String get name; String get unit; String? get description; bool? get isActive; int? get usageCount; String? get totalUsed; String? get currentStock; String? get minStock; bool? get needsRestock; String? get createdAt; String? get updatedAt;
/// Create a copy of MaterialEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialEntityCopyWith<MaterialEntity> get copyWith => _$MaterialEntityCopyWithImpl<MaterialEntity>(this as MaterialEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MaterialEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.usageCount, _this.usageCount) || other.usageCount == _this.usageCount)&&(identical(other.totalUsed, _this.totalUsed) || other.totalUsed == _this.totalUsed)&&(identical(other.currentStock, _this.currentStock) || other.currentStock == _this.currentStock)&&(identical(other.minStock, _this.minStock) || other.minStock == _this.minStock)&&(identical(other.needsRestock, _this.needsRestock) || other.needsRestock == _this.needsRestock)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as MaterialEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.unit,_this.description,_this.isActive,_this.usageCount,_this.totalUsed,_this.currentStock,_this.minStock,_this.needsRestock,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as MaterialEntity;
  return 'MaterialEntity(id: ${_this.id}, name: ${_this.name}, unit: ${_this.unit}, description: ${_this.description}, isActive: ${_this.isActive}, usageCount: ${_this.usageCount}, totalUsed: ${_this.totalUsed}, currentStock: ${_this.currentStock}, minStock: ${_this.minStock}, needsRestock: ${_this.needsRestock}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $MaterialEntityCopyWith<$Res>  {
  factory $MaterialEntityCopyWith(MaterialEntity value, $Res Function(MaterialEntity) _then) = _$MaterialEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String unit, String? description, bool? isActive, int? usageCount, String? totalUsed, String? currentStock, String? minStock, bool? needsRestock, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$MaterialEntityCopyWithImpl<$Res>
    implements $MaterialEntityCopyWith<$Res> {
  _$MaterialEntityCopyWithImpl(this._self, this._then);

  final MaterialEntity _self;
  final $Res Function(MaterialEntity) _then;

/// Create a copy of MaterialEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unit = null,Object? description = freezed,Object? isActive = freezed,Object? usageCount = freezed,Object? totalUsed = freezed,Object? currentStock = freezed,Object? minStock = freezed,Object? needsRestock = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(MaterialEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,usageCount: freezed == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int?,totalUsed: freezed == totalUsed ? _self.totalUsed : totalUsed // ignore: cast_nullable_to_non_nullable
as String?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as String?,needsRestock: freezed == needsRestock ? _self.needsRestock : needsRestock // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialEntity].
extension MaterialEntityPatterns on MaterialEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialEntity value)  $default,){
final _that = this;
switch (_that) {
case _MaterialEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String unit,  String? description,  bool? isActive,  int? usageCount,  String? totalUsed,  String? currentStock,  String? minStock,  bool? needsRestock,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialEntity() when $default != null:
return $default(_that.id,_that.name,_that.unit,_that.description,_that.isActive,_that.usageCount,_that.totalUsed,_that.currentStock,_that.minStock,_that.needsRestock,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String unit,  String? description,  bool? isActive,  int? usageCount,  String? totalUsed,  String? currentStock,  String? minStock,  bool? needsRestock,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MaterialEntity():
return $default(_that.id,_that.name,_that.unit,_that.description,_that.isActive,_that.usageCount,_that.totalUsed,_that.currentStock,_that.minStock,_that.needsRestock,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String unit,  String? description,  bool? isActive,  int? usageCount,  String? totalUsed,  String? currentStock,  String? minStock,  bool? needsRestock,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MaterialEntity() when $default != null:
return $default(_that.id,_that.name,_that.unit,_that.description,_that.isActive,_that.usageCount,_that.totalUsed,_that.currentStock,_that.minStock,_that.needsRestock,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _MaterialEntity implements MaterialEntity {
  const _MaterialEntity({required this.id, required this.name, required this.unit, required this.description, required this.isActive, required this.usageCount, required this.totalUsed, required this.currentStock, required this.minStock, required this.needsRestock, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String name;
@override final  String unit;
@override final  String? description;
@override final  bool? isActive;
@override final  int? usageCount;
@override final  String? totalUsed;
@override final  String? currentStock;
@override final  String? minStock;
@override final  bool? needsRestock;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of MaterialEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialEntityCopyWith<_MaterialEntity> get copyWith => __$MaterialEntityCopyWithImpl<_MaterialEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.usageCount, usageCount) || other.usageCount == usageCount)&&(identical(other.totalUsed, totalUsed) || other.totalUsed == totalUsed)&&(identical(other.currentStock, currentStock) || other.currentStock == currentStock)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.needsRestock, needsRestock) || other.needsRestock == needsRestock)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,unit,description,isActive,usageCount,totalUsed,currentStock,minStock,needsRestock,createdAt,updatedAt);
}

@override
String toString() {
    return 'MaterialEntity(id: $id, name: $name, unit: $unit, description: $description, isActive: $isActive, usageCount: $usageCount, totalUsed: $totalUsed, currentStock: $currentStock, minStock: $minStock, needsRestock: $needsRestock, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MaterialEntityCopyWith<$Res> implements $MaterialEntityCopyWith<$Res> {
  factory _$MaterialEntityCopyWith(_MaterialEntity value, $Res Function(_MaterialEntity) _then) = __$MaterialEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String unit, String? description, bool? isActive, int? usageCount, String? totalUsed, String? currentStock, String? minStock, bool? needsRestock, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$MaterialEntityCopyWithImpl<$Res>
    implements _$MaterialEntityCopyWith<$Res> {
  __$MaterialEntityCopyWithImpl(this._self, this._then);

  final _MaterialEntity _self;
  final $Res Function(_MaterialEntity) _then;

/// Create a copy of MaterialEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? unit = null,Object? description = freezed,Object? isActive = freezed,Object? usageCount = freezed,Object? totalUsed = freezed,Object? currentStock = freezed,Object? minStock = freezed,Object? needsRestock = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MaterialEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,usageCount: freezed == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int?,totalUsed: freezed == totalUsed ? _self.totalUsed : totalUsed // ignore: cast_nullable_to_non_nullable
as String?,currentStock: freezed == currentStock ? _self.currentStock : currentStock // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as String?,needsRestock: freezed == needsRestock ? _self.needsRestock : needsRestock // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
