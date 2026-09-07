// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialModel {

 int get id; String get name; String get unit; String? get description; bool? get is_active; int? get usage_count; String? get total_used; String? get current_stock; String? get min_stock; bool? get needs_restock; String? get created_at; String? get updated_at;
/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialModelCopyWith<MaterialModel> get copyWith => _$MaterialModelCopyWithImpl<MaterialModel>(this as MaterialModel, _$identity);

  /// Serializes this MaterialModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MaterialModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.is_active, _this.is_active) || other.is_active == _this.is_active)&&(identical(other.usage_count, _this.usage_count) || other.usage_count == _this.usage_count)&&(identical(other.total_used, _this.total_used) || other.total_used == _this.total_used)&&(identical(other.current_stock, _this.current_stock) || other.current_stock == _this.current_stock)&&(identical(other.min_stock, _this.min_stock) || other.min_stock == _this.min_stock)&&(identical(other.needs_restock, _this.needs_restock) || other.needs_restock == _this.needs_restock)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MaterialModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.unit,_this.description,_this.is_active,_this.usage_count,_this.total_used,_this.current_stock,_this.min_stock,_this.needs_restock,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as MaterialModel;
  return 'MaterialModel(id: ${_this.id}, name: ${_this.name}, unit: ${_this.unit}, description: ${_this.description}, is_active: ${_this.is_active}, usage_count: ${_this.usage_count}, total_used: ${_this.total_used}, current_stock: ${_this.current_stock}, min_stock: ${_this.min_stock}, needs_restock: ${_this.needs_restock}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $MaterialModelCopyWith<$Res>  {
  factory $MaterialModelCopyWith(MaterialModel value, $Res Function(MaterialModel) _then) = _$MaterialModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String unit, String? description, bool? is_active, int? usage_count, String? total_used, String? current_stock, String? min_stock, bool? needs_restock, String? created_at, String? updated_at
});




}
/// @nodoc
class _$MaterialModelCopyWithImpl<$Res>
    implements $MaterialModelCopyWith<$Res> {
  _$MaterialModelCopyWithImpl(this._self, this._then);

  final MaterialModel _self;
  final $Res Function(MaterialModel) _then;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unit = null,Object? description = freezed,Object? is_active = freezed,Object? usage_count = freezed,Object? total_used = freezed,Object? current_stock = freezed,Object? min_stock = freezed,Object? needs_restock = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(MaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,usage_count: freezed == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int?,total_used: freezed == total_used ? _self.total_used : total_used // ignore: cast_nullable_to_non_nullable
as String?,current_stock: freezed == current_stock ? _self.current_stock : current_stock // ignore: cast_nullable_to_non_nullable
as String?,min_stock: freezed == min_stock ? _self.min_stock : min_stock // ignore: cast_nullable_to_non_nullable
as String?,needs_restock: freezed == needs_restock ? _self.needs_restock : needs_restock // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialModel].
extension MaterialModelPatterns on MaterialModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialModel value)  $default,){
final _that = this;
switch (_that) {
case _MaterialModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialModel value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String unit,  String? description,  bool? is_active,  int? usage_count,  String? total_used,  String? current_stock,  String? min_stock,  bool? needs_restock,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialModel() when $default != null:
return $default(_that.id,_that.name,_that.unit,_that.description,_that.is_active,_that.usage_count,_that.total_used,_that.current_stock,_that.min_stock,_that.needs_restock,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String unit,  String? description,  bool? is_active,  int? usage_count,  String? total_used,  String? current_stock,  String? min_stock,  bool? needs_restock,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _MaterialModel():
return $default(_that.id,_that.name,_that.unit,_that.description,_that.is_active,_that.usage_count,_that.total_used,_that.current_stock,_that.min_stock,_that.needs_restock,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String unit,  String? description,  bool? is_active,  int? usage_count,  String? total_used,  String? current_stock,  String? min_stock,  bool? needs_restock,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _MaterialModel() when $default != null:
return $default(_that.id,_that.name,_that.unit,_that.description,_that.is_active,_that.usage_count,_that.total_used,_that.current_stock,_that.min_stock,_that.needs_restock,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialModel implements MaterialModel {
  const _MaterialModel({required this.id, required this.name, required this.unit, required this.description, required this.is_active, required this.usage_count, required this.total_used, required this.current_stock, required this.min_stock, required this.needs_restock, required this.created_at, required this.updated_at});
  factory _MaterialModel.fromJson(Map<String, dynamic> json) => _$MaterialModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String unit;
@override final  String? description;
@override final  bool? is_active;
@override final  int? usage_count;
@override final  String? total_used;
@override final  String? current_stock;
@override final  String? min_stock;
@override final  bool? needs_restock;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialModelCopyWith<_MaterialModel> get copyWith => __$MaterialModelCopyWithImpl<_MaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.usage_count, usage_count) || other.usage_count == usage_count)&&(identical(other.total_used, total_used) || other.total_used == total_used)&&(identical(other.current_stock, current_stock) || other.current_stock == current_stock)&&(identical(other.min_stock, min_stock) || other.min_stock == min_stock)&&(identical(other.needs_restock, needs_restock) || other.needs_restock == needs_restock)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,unit,description,is_active,usage_count,total_used,current_stock,min_stock,needs_restock,created_at,updated_at);
}

@override
String toString() {
    return 'MaterialModel(id: $id, name: $name, unit: $unit, description: $description, is_active: $is_active, usage_count: $usage_count, total_used: $total_used, current_stock: $current_stock, min_stock: $min_stock, needs_restock: $needs_restock, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$MaterialModelCopyWith<$Res> implements $MaterialModelCopyWith<$Res> {
  factory _$MaterialModelCopyWith(_MaterialModel value, $Res Function(_MaterialModel) _then) = __$MaterialModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String unit, String? description, bool? is_active, int? usage_count, String? total_used, String? current_stock, String? min_stock, bool? needs_restock, String? created_at, String? updated_at
});




}
/// @nodoc
class __$MaterialModelCopyWithImpl<$Res>
    implements _$MaterialModelCopyWith<$Res> {
  __$MaterialModelCopyWithImpl(this._self, this._then);

  final _MaterialModel _self;
  final $Res Function(_MaterialModel) _then;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? unit = null,Object? description = freezed,Object? is_active = freezed,Object? usage_count = freezed,Object? total_used = freezed,Object? current_stock = freezed,Object? min_stock = freezed,Object? needs_restock = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_MaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,usage_count: freezed == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int?,total_used: freezed == total_used ? _self.total_used : total_used // ignore: cast_nullable_to_non_nullable
as String?,current_stock: freezed == current_stock ? _self.current_stock : current_stock // ignore: cast_nullable_to_non_nullable
as String?,min_stock: freezed == min_stock ? _self.min_stock : min_stock // ignore: cast_nullable_to_non_nullable
as String?,needs_restock: freezed == needs_restock ? _self.needs_restock : needs_restock // ignore: cast_nullable_to_non_nullable
as bool?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
