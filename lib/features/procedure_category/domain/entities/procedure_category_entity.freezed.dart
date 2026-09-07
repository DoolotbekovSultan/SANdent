// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProcedureCategoryEntity {

 int get id; String get name; String? get slug; int? get parentId; String? get description; int? get procedureCount; List<Map<String, dynamic>>? get children; bool? get isActive; String? get createdAt; String? get updatedAt;
/// Create a copy of ProcedureCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureCategoryEntityCopyWith<ProcedureCategoryEntity> get copyWith => _$ProcedureCategoryEntityCopyWithImpl<ProcedureCategoryEntity>(this as ProcedureCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProcedureCategoryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureCategoryEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.procedureCount, _this.procedureCount) || other.procedureCount == _this.procedureCount)&&const DeepCollectionEquality().equals(other.children, _this.children)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as ProcedureCategoryEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.parentId,_this.description,_this.procedureCount,const DeepCollectionEquality().hash(_this.children),_this.isActive,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as ProcedureCategoryEntity;
  return 'ProcedureCategoryEntity(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, parentId: ${_this.parentId}, description: ${_this.description}, procedureCount: ${_this.procedureCount}, children: ${_this.children}, isActive: ${_this.isActive}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $ProcedureCategoryEntityCopyWith<$Res>  {
  factory $ProcedureCategoryEntityCopyWith(ProcedureCategoryEntity value, $Res Function(ProcedureCategoryEntity) _then) = _$ProcedureCategoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? slug, int? parentId, String? description, int? procedureCount, List<Map<String, dynamic>>? children, bool? isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$ProcedureCategoryEntityCopyWithImpl<$Res>
    implements $ProcedureCategoryEntityCopyWith<$Res> {
  _$ProcedureCategoryEntityCopyWithImpl(this._self, this._then);

  final ProcedureCategoryEntity _self;
  final $Res Function(ProcedureCategoryEntity) _then;

/// Create a copy of ProcedureCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parentId = freezed,Object? description = freezed,Object? procedureCount = freezed,Object? children = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(ProcedureCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,procedureCount: freezed == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureCategoryEntity].
extension ProcedureCategoryEntityPatterns on ProcedureCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? slug,  int? parentId,  String? description,  int? procedureCount,  List<Map<String, dynamic>>? children,  bool? isActive,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.description,_that.procedureCount,_that.children,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? slug,  int? parentId,  String? description,  int? procedureCount,  List<Map<String, dynamic>>? children,  bool? isActive,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProcedureCategoryEntity():
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.description,_that.procedureCount,_that.children,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? slug,  int? parentId,  String? description,  int? procedureCount,  List<Map<String, dynamic>>? children,  bool? isActive,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.description,_that.procedureCount,_that.children,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ProcedureCategoryEntity implements ProcedureCategoryEntity {
  const _ProcedureCategoryEntity({required this.id, required this.name, required this.slug, required this.parentId, required this.description, required this.procedureCount, required  List<Map<String, dynamic>>? children, required this.isActive, required this.createdAt, required this.updatedAt}): _children = children;
  

@override final  int id;
@override final  String name;
@override final  String? slug;
@override final  int? parentId;
@override final  String? description;
@override final  int? procedureCount;
 final  List<Map<String, dynamic>>? _children;
@override List<Map<String, dynamic>>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isActive;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of ProcedureCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureCategoryEntityCopyWith<_ProcedureCategoryEntity> get copyWith => __$ProcedureCategoryEntityCopyWithImpl<_ProcedureCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.procedureCount, procedureCount) || other.procedureCount == procedureCount)&&const DeepCollectionEquality().equals(other.children, _children)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,parentId,description,procedureCount,const DeepCollectionEquality().hash(_children),isActive,createdAt,updatedAt);
}

@override
String toString() {
    return 'ProcedureCategoryEntity(id: $id, name: $name, slug: $slug, parentId: $parentId, description: $description, procedureCount: $procedureCount, children: $children, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProcedureCategoryEntityCopyWith<$Res> implements $ProcedureCategoryEntityCopyWith<$Res> {
  factory _$ProcedureCategoryEntityCopyWith(_ProcedureCategoryEntity value, $Res Function(_ProcedureCategoryEntity) _then) = __$ProcedureCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? slug, int? parentId, String? description, int? procedureCount, List<Map<String, dynamic>>? children, bool? isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$ProcedureCategoryEntityCopyWithImpl<$Res>
    implements _$ProcedureCategoryEntityCopyWith<$Res> {
  __$ProcedureCategoryEntityCopyWithImpl(this._self, this._then);

  final _ProcedureCategoryEntity _self;
  final $Res Function(_ProcedureCategoryEntity) _then;

/// Create a copy of ProcedureCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parentId = freezed,Object? description = freezed,Object? procedureCount = freezed,Object? children = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProcedureCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,procedureCount: freezed == procedureCount ? _self.procedureCount : procedureCount // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
