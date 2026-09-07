// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcedureCategoryModel {

 int get id; String get name; String? get slug; int? get parent; String? get description; int? get procedure_count; List<Map<String, dynamic>>? get children; bool? get is_active; String? get created_at; String? get updated_at;
/// Create a copy of ProcedureCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureCategoryModelCopyWith<ProcedureCategoryModel> get copyWith => _$ProcedureCategoryModelCopyWithImpl<ProcedureCategoryModel>(this as ProcedureCategoryModel, _$identity);

  /// Serializes this ProcedureCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProcedureCategoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureCategoryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.parent, _this.parent) || other.parent == _this.parent)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.procedure_count, _this.procedure_count) || other.procedure_count == _this.procedure_count)&&const DeepCollectionEquality().equals(other.children, _this.children)&&(identical(other.is_active, _this.is_active) || other.is_active == _this.is_active)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProcedureCategoryModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.parent,_this.description,_this.procedure_count,const DeepCollectionEquality().hash(_this.children),_this.is_active,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as ProcedureCategoryModel;
  return 'ProcedureCategoryModel(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, parent: ${_this.parent}, description: ${_this.description}, procedure_count: ${_this.procedure_count}, children: ${_this.children}, is_active: ${_this.is_active}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $ProcedureCategoryModelCopyWith<$Res>  {
  factory $ProcedureCategoryModelCopyWith(ProcedureCategoryModel value, $Res Function(ProcedureCategoryModel) _then) = _$ProcedureCategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? slug, int? parent, String? description, int? procedure_count, List<Map<String, dynamic>>? children, bool? is_active, String? created_at, String? updated_at
});




}
/// @nodoc
class _$ProcedureCategoryModelCopyWithImpl<$Res>
    implements $ProcedureCategoryModelCopyWith<$Res> {
  _$ProcedureCategoryModelCopyWithImpl(this._self, this._then);

  final ProcedureCategoryModel _self;
  final $Res Function(ProcedureCategoryModel) _then;

/// Create a copy of ProcedureCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parent = freezed,Object? description = freezed,Object? procedure_count = freezed,Object? children = freezed,Object? is_active = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(ProcedureCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,procedure_count: freezed == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureCategoryModel].
extension ProcedureCategoryModelPatterns on ProcedureCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? slug,  int? parent,  String? description,  int? procedure_count,  List<Map<String, dynamic>>? children,  bool? is_active,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parent,_that.description,_that.procedure_count,_that.children,_that.is_active,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? slug,  int? parent,  String? description,  int? procedure_count,  List<Map<String, dynamic>>? children,  bool? is_active,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _ProcedureCategoryModel():
return $default(_that.id,_that.name,_that.slug,_that.parent,_that.description,_that.procedure_count,_that.children,_that.is_active,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? slug,  int? parent,  String? description,  int? procedure_count,  List<Map<String, dynamic>>? children,  bool? is_active,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parent,_that.description,_that.procedure_count,_that.children,_that.is_active,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProcedureCategoryModel implements ProcedureCategoryModel {
  const _ProcedureCategoryModel({required this.id, required this.name, required this.slug, required this.parent, required this.description, required this.procedure_count, required  List<Map<String, dynamic>>? children, required this.is_active, required this.created_at, required this.updated_at}): _children = children;
  factory _ProcedureCategoryModel.fromJson(Map<String, dynamic> json) => _$ProcedureCategoryModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? slug;
@override final  int? parent;
@override final  String? description;
@override final  int? procedure_count;
 final  List<Map<String, dynamic>>? _children;
@override List<Map<String, dynamic>>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? is_active;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of ProcedureCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureCategoryModelCopyWith<_ProcedureCategoryModel> get copyWith => __$ProcedureCategoryModelCopyWithImpl<_ProcedureCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProcedureCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.description, description) || other.description == description)&&(identical(other.procedure_count, procedure_count) || other.procedure_count == procedure_count)&&const DeepCollectionEquality().equals(other.children, _children)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,parent,description,procedure_count,const DeepCollectionEquality().hash(_children),is_active,created_at,updated_at);
}

@override
String toString() {
    return 'ProcedureCategoryModel(id: $id, name: $name, slug: $slug, parent: $parent, description: $description, procedure_count: $procedure_count, children: $children, is_active: $is_active, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$ProcedureCategoryModelCopyWith<$Res> implements $ProcedureCategoryModelCopyWith<$Res> {
  factory _$ProcedureCategoryModelCopyWith(_ProcedureCategoryModel value, $Res Function(_ProcedureCategoryModel) _then) = __$ProcedureCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? slug, int? parent, String? description, int? procedure_count, List<Map<String, dynamic>>? children, bool? is_active, String? created_at, String? updated_at
});




}
/// @nodoc
class __$ProcedureCategoryModelCopyWithImpl<$Res>
    implements _$ProcedureCategoryModelCopyWith<$Res> {
  __$ProcedureCategoryModelCopyWithImpl(this._self, this._then);

  final _ProcedureCategoryModel _self;
  final $Res Function(_ProcedureCategoryModel) _then;

/// Create a copy of ProcedureCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parent = freezed,Object? description = freezed,Object? procedure_count = freezed,Object? children = freezed,Object? is_active = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_ProcedureCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,procedure_count: freezed == procedure_count ? _self.procedure_count : procedure_count // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
