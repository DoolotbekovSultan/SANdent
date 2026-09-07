// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bulk_create_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BulkCreateResultEntity {

 List<ProcedureEntity> get created; int get total; int get successCount; int get errorCount;
/// Create a copy of BulkCreateResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BulkCreateResultEntityCopyWith<BulkCreateResultEntity> get copyWith => _$BulkCreateResultEntityCopyWithImpl<BulkCreateResultEntity>(this as BulkCreateResultEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BulkCreateResultEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BulkCreateResultEntity&&const DeepCollectionEquality().equals(other.created, _this.created)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.successCount, _this.successCount) || other.successCount == _this.successCount)&&(identical(other.errorCount, _this.errorCount) || other.errorCount == _this.errorCount));
}


@override
int get hashCode {
  final _this = this as BulkCreateResultEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.created),_this.total,_this.successCount,_this.errorCount);
}

@override
String toString() {
  final _this = this as BulkCreateResultEntity;
  return 'BulkCreateResultEntity(created: ${_this.created}, total: ${_this.total}, successCount: ${_this.successCount}, errorCount: ${_this.errorCount})';
}


}

/// @nodoc
abstract mixin class $BulkCreateResultEntityCopyWith<$Res>  {
  factory $BulkCreateResultEntityCopyWith(BulkCreateResultEntity value, $Res Function(BulkCreateResultEntity) _then) = _$BulkCreateResultEntityCopyWithImpl;
@useResult
$Res call({
 List<ProcedureEntity> created, int total, int successCount, int errorCount
});




}
/// @nodoc
class _$BulkCreateResultEntityCopyWithImpl<$Res>
    implements $BulkCreateResultEntityCopyWith<$Res> {
  _$BulkCreateResultEntityCopyWithImpl(this._self, this._then);

  final BulkCreateResultEntity _self;
  final $Res Function(BulkCreateResultEntity) _then;

/// Create a copy of BulkCreateResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? created = null,Object? total = null,Object? successCount = null,Object? errorCount = null,}) {
  return _then(BulkCreateResultEntity(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as List<ProcedureEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,errorCount: null == errorCount ? _self.errorCount : errorCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BulkCreateResultEntity].
extension BulkCreateResultEntityPatterns on BulkCreateResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BulkCreateResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BulkCreateResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BulkCreateResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _BulkCreateResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BulkCreateResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BulkCreateResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProcedureEntity> created,  int total,  int successCount,  int errorCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BulkCreateResultEntity() when $default != null:
return $default(_that.created,_that.total,_that.successCount,_that.errorCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProcedureEntity> created,  int total,  int successCount,  int errorCount)  $default,) {final _that = this;
switch (_that) {
case _BulkCreateResultEntity():
return $default(_that.created,_that.total,_that.successCount,_that.errorCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProcedureEntity> created,  int total,  int successCount,  int errorCount)?  $default,) {final _that = this;
switch (_that) {
case _BulkCreateResultEntity() when $default != null:
return $default(_that.created,_that.total,_that.successCount,_that.errorCount);case _:
  return null;

}
}

}

/// @nodoc


class _BulkCreateResultEntity implements BulkCreateResultEntity {
  const _BulkCreateResultEntity({required  List<ProcedureEntity> created, required this.total, required this.successCount, required this.errorCount}): _created = created;
  

 final  List<ProcedureEntity> _created;
@override List<ProcedureEntity> get created {
  if (_created is EqualUnmodifiableListView) return _created;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_created);
}

@override final  int total;
@override final  int successCount;
@override final  int errorCount;

/// Create a copy of BulkCreateResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BulkCreateResultEntityCopyWith<_BulkCreateResultEntity> get copyWith => __$BulkCreateResultEntityCopyWithImpl<_BulkCreateResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BulkCreateResultEntity&&const DeepCollectionEquality().equals(other.created, _created)&&(identical(other.total, total) || other.total == total)&&(identical(other.successCount, successCount) || other.successCount == successCount)&&(identical(other.errorCount, errorCount) || other.errorCount == errorCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_created),total,successCount,errorCount);
}

@override
String toString() {
    return 'BulkCreateResultEntity(created: $created, total: $total, successCount: $successCount, errorCount: $errorCount)';
}


}

/// @nodoc
abstract mixin class _$BulkCreateResultEntityCopyWith<$Res> implements $BulkCreateResultEntityCopyWith<$Res> {
  factory _$BulkCreateResultEntityCopyWith(_BulkCreateResultEntity value, $Res Function(_BulkCreateResultEntity) _then) = __$BulkCreateResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<ProcedureEntity> created, int total, int successCount, int errorCount
});




}
/// @nodoc
class __$BulkCreateResultEntityCopyWithImpl<$Res>
    implements _$BulkCreateResultEntityCopyWith<$Res> {
  __$BulkCreateResultEntityCopyWithImpl(this._self, this._then);

  final _BulkCreateResultEntity _self;
  final $Res Function(_BulkCreateResultEntity) _then;

/// Create a copy of BulkCreateResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? created = null,Object? total = null,Object? successCount = null,Object? errorCount = null,}) {
  return _then(_BulkCreateResultEntity(
created: null == created ? _self._created : created // ignore: cast_nullable_to_non_nullable
as List<ProcedureEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,errorCount: null == errorCount ? _self.errorCount : errorCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
