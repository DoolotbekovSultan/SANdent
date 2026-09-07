// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'procedure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcedureModel {

 int get id; String get name; String? get code; int? get category; String? get category_name; String? get description; String? get price; int? get duration_minutes; bool? get is_active; int? get usage_count; String? get total_revenue; String? get created_at; String? get updated_at;
/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcedureModelCopyWith<ProcedureModel> get copyWith => _$ProcedureModelCopyWithImpl<ProcedureModel>(this as ProcedureModel, _$identity);

  /// Serializes this ProcedureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProcedureModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcedureModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.category_name, _this.category_name) || other.category_name == _this.category_name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.duration_minutes, _this.duration_minutes) || other.duration_minutes == _this.duration_minutes)&&(identical(other.is_active, _this.is_active) || other.is_active == _this.is_active)&&(identical(other.usage_count, _this.usage_count) || other.usage_count == _this.usage_count)&&(identical(other.total_revenue, _this.total_revenue) || other.total_revenue == _this.total_revenue)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProcedureModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.code,_this.category,_this.category_name,_this.description,_this.price,_this.duration_minutes,_this.is_active,_this.usage_count,_this.total_revenue,_this.created_at,_this.updated_at);
}

@override
String toString() {
  final _this = this as ProcedureModel;
  return 'ProcedureModel(id: ${_this.id}, name: ${_this.name}, code: ${_this.code}, category: ${_this.category}, category_name: ${_this.category_name}, description: ${_this.description}, price: ${_this.price}, duration_minutes: ${_this.duration_minutes}, is_active: ${_this.is_active}, usage_count: ${_this.usage_count}, total_revenue: ${_this.total_revenue}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $ProcedureModelCopyWith<$Res>  {
  factory $ProcedureModelCopyWith(ProcedureModel value, $Res Function(ProcedureModel) _then) = _$ProcedureModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? code, int? category, String? category_name, String? description, String? price, int? duration_minutes, bool? is_active, int? usage_count, String? total_revenue, String? created_at, String? updated_at
});




}
/// @nodoc
class _$ProcedureModelCopyWithImpl<$Res>
    implements $ProcedureModelCopyWith<$Res> {
  _$ProcedureModelCopyWithImpl(this._self, this._then);

  final ProcedureModel _self;
  final $Res Function(ProcedureModel) _then;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? category = freezed,Object? category_name = freezed,Object? description = freezed,Object? price = freezed,Object? duration_minutes = freezed,Object? is_active = freezed,Object? usage_count = freezed,Object? total_revenue = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(ProcedureModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,category_name: freezed == category_name ? _self.category_name : category_name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,usage_count: freezed == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int?,total_revenue: freezed == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProcedureModel].
extension ProcedureModelPatterns on ProcedureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProcedureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProcedureModel value)  $default,){
final _that = this;
switch (_that) {
case _ProcedureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProcedureModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? code,  int? category,  String? category_name,  String? description,  String? price,  int? duration_minutes,  bool? is_active,  int? usage_count,  String? total_revenue,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.category,_that.category_name,_that.description,_that.price,_that.duration_minutes,_that.is_active,_that.usage_count,_that.total_revenue,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? code,  int? category,  String? category_name,  String? description,  String? price,  int? duration_minutes,  bool? is_active,  int? usage_count,  String? total_revenue,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _ProcedureModel():
return $default(_that.id,_that.name,_that.code,_that.category,_that.category_name,_that.description,_that.price,_that.duration_minutes,_that.is_active,_that.usage_count,_that.total_revenue,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? code,  int? category,  String? category_name,  String? description,  String? price,  int? duration_minutes,  bool? is_active,  int? usage_count,  String? total_revenue,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _ProcedureModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.category,_that.category_name,_that.description,_that.price,_that.duration_minutes,_that.is_active,_that.usage_count,_that.total_revenue,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProcedureModel implements ProcedureModel {
  const _ProcedureModel({required this.id, required this.name, required this.code, required this.category, required this.category_name, required this.description, required this.price, required this.duration_minutes, required this.is_active, required this.usage_count, required this.total_revenue, required this.created_at, required this.updated_at});
  factory _ProcedureModel.fromJson(Map<String, dynamic> json) => _$ProcedureModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? code;
@override final  int? category;
@override final  String? category_name;
@override final  String? description;
@override final  String? price;
@override final  int? duration_minutes;
@override final  bool? is_active;
@override final  int? usage_count;
@override final  String? total_revenue;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcedureModelCopyWith<_ProcedureModel> get copyWith => __$ProcedureModelCopyWithImpl<_ProcedureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProcedureModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcedureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.category_name, category_name) || other.category_name == category_name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.usage_count, usage_count) || other.usage_count == usage_count)&&(identical(other.total_revenue, total_revenue) || other.total_revenue == total_revenue)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,code,category,category_name,description,price,duration_minutes,is_active,usage_count,total_revenue,created_at,updated_at);
}

@override
String toString() {
    return 'ProcedureModel(id: $id, name: $name, code: $code, category: $category, category_name: $category_name, description: $description, price: $price, duration_minutes: $duration_minutes, is_active: $is_active, usage_count: $usage_count, total_revenue: $total_revenue, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$ProcedureModelCopyWith<$Res> implements $ProcedureModelCopyWith<$Res> {
  factory _$ProcedureModelCopyWith(_ProcedureModel value, $Res Function(_ProcedureModel) _then) = __$ProcedureModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? code, int? category, String? category_name, String? description, String? price, int? duration_minutes, bool? is_active, int? usage_count, String? total_revenue, String? created_at, String? updated_at
});




}
/// @nodoc
class __$ProcedureModelCopyWithImpl<$Res>
    implements _$ProcedureModelCopyWith<$Res> {
  __$ProcedureModelCopyWithImpl(this._self, this._then);

  final _ProcedureModel _self;
  final $Res Function(_ProcedureModel) _then;

/// Create a copy of ProcedureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? category = freezed,Object? category_name = freezed,Object? description = freezed,Object? price = freezed,Object? duration_minutes = freezed,Object? is_active = freezed,Object? usage_count = freezed,Object? total_revenue = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_ProcedureModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,category_name: freezed == category_name ? _self.category_name : category_name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,usage_count: freezed == usage_count ? _self.usage_count : usage_count // ignore: cast_nullable_to_non_nullable
as int?,total_revenue: freezed == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
