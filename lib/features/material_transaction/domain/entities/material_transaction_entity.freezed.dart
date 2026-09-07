// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialTransactionEntity {

 int get id; int get materialId; String? get materialName; String get transactionType; String? get transactionTypeDisplay; String get quantity; String? get note; int? get createdBy; String? get createdByName; String? get createdAt;
/// Create a copy of MaterialTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTransactionEntityCopyWith<MaterialTransactionEntity> get copyWith => _$MaterialTransactionEntityCopyWithImpl<MaterialTransactionEntity>(this as MaterialTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MaterialTransactionEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTransactionEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.materialId, _this.materialId) || other.materialId == _this.materialId)&&(identical(other.materialName, _this.materialName) || other.materialName == _this.materialName)&&(identical(other.transactionType, _this.transactionType) || other.transactionType == _this.transactionType)&&(identical(other.transactionTypeDisplay, _this.transactionTypeDisplay) || other.transactionTypeDisplay == _this.transactionTypeDisplay)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.createdBy, _this.createdBy) || other.createdBy == _this.createdBy)&&(identical(other.createdByName, _this.createdByName) || other.createdByName == _this.createdByName)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as MaterialTransactionEntity;
  return Object.hash(runtimeType,_this.id,_this.materialId,_this.materialName,_this.transactionType,_this.transactionTypeDisplay,_this.quantity,_this.note,_this.createdBy,_this.createdByName,_this.createdAt);
}

@override
String toString() {
  final _this = this as MaterialTransactionEntity;
  return 'MaterialTransactionEntity(id: ${_this.id}, materialId: ${_this.materialId}, materialName: ${_this.materialName}, transactionType: ${_this.transactionType}, transactionTypeDisplay: ${_this.transactionTypeDisplay}, quantity: ${_this.quantity}, note: ${_this.note}, createdBy: ${_this.createdBy}, createdByName: ${_this.createdByName}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MaterialTransactionEntityCopyWith<$Res>  {
  factory $MaterialTransactionEntityCopyWith(MaterialTransactionEntity value, $Res Function(MaterialTransactionEntity) _then) = _$MaterialTransactionEntityCopyWithImpl;
@useResult
$Res call({
 int id, int materialId, String? materialName, String transactionType, String? transactionTypeDisplay, String quantity, String? note, int? createdBy, String? createdByName, String? createdAt
});




}
/// @nodoc
class _$MaterialTransactionEntityCopyWithImpl<$Res>
    implements $MaterialTransactionEntityCopyWith<$Res> {
  _$MaterialTransactionEntityCopyWithImpl(this._self, this._then);

  final MaterialTransactionEntity _self;
  final $Res Function(MaterialTransactionEntity) _then;

/// Create a copy of MaterialTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? materialId = null,Object? materialName = freezed,Object? transactionType = null,Object? transactionTypeDisplay = freezed,Object? quantity = null,Object? note = freezed,Object? createdBy = freezed,Object? createdByName = freezed,Object? createdAt = freezed,}) {
  return _then(MaterialTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,materialName: freezed == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,transactionTypeDisplay: freezed == transactionTypeDisplay ? _self.transactionTypeDisplay : transactionTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdByName: freezed == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialTransactionEntity].
extension MaterialTransactionEntityPatterns on MaterialTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _MaterialTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int materialId,  String? materialName,  String transactionType,  String? transactionTypeDisplay,  String quantity,  String? note,  int? createdBy,  String? createdByName,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialTransactionEntity() when $default != null:
return $default(_that.id,_that.materialId,_that.materialName,_that.transactionType,_that.transactionTypeDisplay,_that.quantity,_that.note,_that.createdBy,_that.createdByName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int materialId,  String? materialName,  String transactionType,  String? transactionTypeDisplay,  String quantity,  String? note,  int? createdBy,  String? createdByName,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MaterialTransactionEntity():
return $default(_that.id,_that.materialId,_that.materialName,_that.transactionType,_that.transactionTypeDisplay,_that.quantity,_that.note,_that.createdBy,_that.createdByName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int materialId,  String? materialName,  String transactionType,  String? transactionTypeDisplay,  String quantity,  String? note,  int? createdBy,  String? createdByName,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MaterialTransactionEntity() when $default != null:
return $default(_that.id,_that.materialId,_that.materialName,_that.transactionType,_that.transactionTypeDisplay,_that.quantity,_that.note,_that.createdBy,_that.createdByName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MaterialTransactionEntity implements MaterialTransactionEntity {
  const _MaterialTransactionEntity({required this.id, required this.materialId, required this.materialName, required this.transactionType, required this.transactionTypeDisplay, required this.quantity, required this.note, required this.createdBy, required this.createdByName, required this.createdAt});
  

@override final  int id;
@override final  int materialId;
@override final  String? materialName;
@override final  String transactionType;
@override final  String? transactionTypeDisplay;
@override final  String quantity;
@override final  String? note;
@override final  int? createdBy;
@override final  String? createdByName;
@override final  String? createdAt;

/// Create a copy of MaterialTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialTransactionEntityCopyWith<_MaterialTransactionEntity> get copyWith => __$MaterialTransactionEntityCopyWithImpl<_MaterialTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.materialId, materialId) || other.materialId == materialId)&&(identical(other.materialName, materialName) || other.materialName == materialName)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.transactionTypeDisplay, transactionTypeDisplay) || other.transactionTypeDisplay == transactionTypeDisplay)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByName, createdByName) || other.createdByName == createdByName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,materialId,materialName,transactionType,transactionTypeDisplay,quantity,note,createdBy,createdByName,createdAt);
}

@override
String toString() {
    return 'MaterialTransactionEntity(id: $id, materialId: $materialId, materialName: $materialName, transactionType: $transactionType, transactionTypeDisplay: $transactionTypeDisplay, quantity: $quantity, note: $note, createdBy: $createdBy, createdByName: $createdByName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MaterialTransactionEntityCopyWith<$Res> implements $MaterialTransactionEntityCopyWith<$Res> {
  factory _$MaterialTransactionEntityCopyWith(_MaterialTransactionEntity value, $Res Function(_MaterialTransactionEntity) _then) = __$MaterialTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int materialId, String? materialName, String transactionType, String? transactionTypeDisplay, String quantity, String? note, int? createdBy, String? createdByName, String? createdAt
});




}
/// @nodoc
class __$MaterialTransactionEntityCopyWithImpl<$Res>
    implements _$MaterialTransactionEntityCopyWith<$Res> {
  __$MaterialTransactionEntityCopyWithImpl(this._self, this._then);

  final _MaterialTransactionEntity _self;
  final $Res Function(_MaterialTransactionEntity) _then;

/// Create a copy of MaterialTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? materialId = null,Object? materialName = freezed,Object? transactionType = null,Object? transactionTypeDisplay = freezed,Object? quantity = null,Object? note = freezed,Object? createdBy = freezed,Object? createdByName = freezed,Object? createdAt = freezed,}) {
  return _then(_MaterialTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,materialId: null == materialId ? _self.materialId : materialId // ignore: cast_nullable_to_non_nullable
as int,materialName: freezed == materialName ? _self.materialName : materialName // ignore: cast_nullable_to_non_nullable
as String?,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,transactionTypeDisplay: freezed == transactionTypeDisplay ? _self.transactionTypeDisplay : transactionTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,createdByName: freezed == createdByName ? _self.createdByName : createdByName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
