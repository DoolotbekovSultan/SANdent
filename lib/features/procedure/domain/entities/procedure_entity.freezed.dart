// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProcedureEntity {

 int get id; String get name; String? get code; int? get categoryId; String? get categoryName; String? get description; String? get price; int? get durationMinutes; bool? get isActive; int? get usageCount; String? get totalRevenue; String? get createdAt; String? get updatedAt;
/// Create a copy of ProcedureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureEntityCopyWith<ProcedureEntity> get copyWith => _$ProcedureEntityCopyWithImpl<ProcedureEntity>(this as ProcedureEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProcedureEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.durationMinutes, _this.durationMinutes) || other.durationMinutes == _this.durationMinutes)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.usageCount, _this.usageCount) || other.usageCount == _this.usageCount)&&(identical(other.totalRevenue, _this.totalRevenue) || other.totalRevenue == _this.totalRevenue)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as ProcedureEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.code,_this.categoryId,_this.categoryName,_this.description,_this.price,_this.durationMinutes,_this.isActive,_this.usageCount,_this.totalRevenue,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as ProcedureEntity;
  return 'ProcedureEntity(id: ${_this.id}, name: ${_this.name}, code: ${_this.code}, categoryId: ${_this.categoryId}, categoryName: ${_this.categoryName}, description: ${_this.description}, price: ${_this.price}, durationMinutes: ${_this.durationMinutes}, isActive: ${_this.isActive}, usageCount: ${_this.usageCount}, totalRevenue: ${_this.totalRevenue}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $ProcedureEntityCopyWith<$Res>  {
  factory $ProcedureEntityCopyWith(ProcedureEntity value, $Res Function(ProcedureEntity) _then) = _$ProcedureEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? code, int? categoryId, String? categoryName, String? description, String? price, int? durationMinutes, bool? isActive, int? usageCount, String? totalRevenue, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$ProcedureEntityCopyWithImpl<$Res>
    implements $ProcedureEntityCopyWith<$Res> {
  _$ProcedureEntityCopyWithImpl(this._self, this._then);

  final ProcedureEntity _self;
  final $Res Function(ProcedureEntity) _then;

/// Create a copy of ProcedureEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? description = freezed,Object? price = freezed,Object? durationMinutes = freezed,Object? isActive = freezed,Object? usageCount = freezed,Object? totalRevenue = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(ProcedureEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,usageCount: freezed == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int?,totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureEntity].
extension ProcedureEntityPatterns on ProcedureEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? code,  int? categoryId,  String? categoryName,  String? description,  String? price,  int? durationMinutes,  bool? isActive,  int? usageCount,  String? totalRevenue,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.categoryId,_that.categoryName,_that.description,_that.price,_that.durationMinutes,_that.isActive,_that.usageCount,_that.totalRevenue,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? code,  int? categoryId,  String? categoryName,  String? description,  String? price,  int? durationMinutes,  bool? isActive,  int? usageCount,  String? totalRevenue,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProcedureEntity():
return $default(_that.id,_that.name,_that.code,_that.categoryId,_that.categoryName,_that.description,_that.price,_that.durationMinutes,_that.isActive,_that.usageCount,_that.totalRevenue,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? code,  int? categoryId,  String? categoryName,  String? description,  String? price,  int? durationMinutes,  bool? isActive,  int? usageCount,  String? totalRevenue,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.categoryId,_that.categoryName,_that.description,_that.price,_that.durationMinutes,_that.isActive,_that.usageCount,_that.totalRevenue,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ProcedureEntity implements ProcedureEntity {
  const _ProcedureEntity({required this.id, required this.name, required this.code, required this.categoryId, required this.categoryName, required this.description, required this.price, required this.durationMinutes, required this.isActive, required this.usageCount, required this.totalRevenue, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String name;
@override final  String? code;
@override final  int? categoryId;
@override final  String? categoryName;
@override final  String? description;
@override final  String? price;
@override final  int? durationMinutes;
@override final  bool? isActive;
@override final  int? usageCount;
@override final  String? totalRevenue;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of ProcedureEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureEntityCopyWith<_ProcedureEntity> get copyWith => __$ProcedureEntityCopyWithImpl<_ProcedureEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.usageCount, usageCount) || other.usageCount == usageCount)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,code,categoryId,categoryName,description,price,durationMinutes,isActive,usageCount,totalRevenue,createdAt,updatedAt);
}

@override
String toString() {
    return 'ProcedureEntity(id: $id, name: $name, code: $code, categoryId: $categoryId, categoryName: $categoryName, description: $description, price: $price, durationMinutes: $durationMinutes, isActive: $isActive, usageCount: $usageCount, totalRevenue: $totalRevenue, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProcedureEntityCopyWith<$Res> implements $ProcedureEntityCopyWith<$Res> {
  factory _$ProcedureEntityCopyWith(_ProcedureEntity value, $Res Function(_ProcedureEntity) _then) = __$ProcedureEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? code, int? categoryId, String? categoryName, String? description, String? price, int? durationMinutes, bool? isActive, int? usageCount, String? totalRevenue, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$ProcedureEntityCopyWithImpl<$Res>
    implements _$ProcedureEntityCopyWith<$Res> {
  __$ProcedureEntityCopyWithImpl(this._self, this._then);

  final _ProcedureEntity _self;
  final $Res Function(_ProcedureEntity) _then;

/// Create a copy of ProcedureEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? description = freezed,Object? price = freezed,Object? durationMinutes = freezed,Object? isActive = freezed,Object? usageCount = freezed,Object? totalRevenue = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProcedureEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,usageCount: freezed == usageCount ? _self.usageCount : usageCount // ignore: cast_nullable_to_non_nullable
as int?,totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
