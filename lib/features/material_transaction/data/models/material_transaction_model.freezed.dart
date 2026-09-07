// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialTransactionModel {

 int get id; int get material; String? get material_name; String get transaction_type; String? get transaction_type_display; String get quantity; String? get note; int? get created_by; String? get created_by_name; String? get created_at;
/// Create a copy of MaterialTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTransactionModelCopyWith<MaterialTransactionModel> get copyWith => _$MaterialTransactionModelCopyWithImpl<MaterialTransactionModel>(this as MaterialTransactionModel, _$identity);

  /// Serializes this MaterialTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MaterialTransactionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTransactionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.material, _this.material) || other.material == _this.material)&&(identical(other.material_name, _this.material_name) || other.material_name == _this.material_name)&&(identical(other.transaction_type, _this.transaction_type) || other.transaction_type == _this.transaction_type)&&(identical(other.transaction_type_display, _this.transaction_type_display) || other.transaction_type_display == _this.transaction_type_display)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.created_by, _this.created_by) || other.created_by == _this.created_by)&&(identical(other.created_by_name, _this.created_by_name) || other.created_by_name == _this.created_by_name)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MaterialTransactionModel;
  return Object.hash(runtimeType,_this.id,_this.material,_this.material_name,_this.transaction_type,_this.transaction_type_display,_this.quantity,_this.note,_this.created_by,_this.created_by_name,_this.created_at);
}

@override
String toString() {
  final _this = this as MaterialTransactionModel;
  return 'MaterialTransactionModel(id: ${_this.id}, material: ${_this.material}, material_name: ${_this.material_name}, transaction_type: ${_this.transaction_type}, transaction_type_display: ${_this.transaction_type_display}, quantity: ${_this.quantity}, note: ${_this.note}, created_by: ${_this.created_by}, created_by_name: ${_this.created_by_name}, created_at: ${_this.created_at})';
}


}

/// @nodoc
abstract mixin class $MaterialTransactionModelCopyWith<$Res>  {
  factory $MaterialTransactionModelCopyWith(MaterialTransactionModel value, $Res Function(MaterialTransactionModel) _then) = _$MaterialTransactionModelCopyWithImpl;
@useResult
$Res call({
 int id, int material, String? material_name, String transaction_type, String? transaction_type_display, String quantity, String? note, int? created_by, String? created_by_name, String? created_at
});




}
/// @nodoc
class _$MaterialTransactionModelCopyWithImpl<$Res>
    implements $MaterialTransactionModelCopyWith<$Res> {
  _$MaterialTransactionModelCopyWithImpl(this._self, this._then);

  final MaterialTransactionModel _self;
  final $Res Function(MaterialTransactionModel) _then;

/// Create a copy of MaterialTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? material = null,Object? material_name = freezed,Object? transaction_type = null,Object? transaction_type_display = freezed,Object? quantity = null,Object? note = freezed,Object? created_by = freezed,Object? created_by_name = freezed,Object? created_at = freezed,}) {
  return _then(MaterialTransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as int,material_name: freezed == material_name ? _self.material_name : material_name // ignore: cast_nullable_to_non_nullable
as String?,transaction_type: null == transaction_type ? _self.transaction_type : transaction_type // ignore: cast_nullable_to_non_nullable
as String,transaction_type_display: freezed == transaction_type_display ? _self.transaction_type_display : transaction_type_display // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,created_by: freezed == created_by ? _self.created_by : created_by // ignore: cast_nullable_to_non_nullable
as int?,created_by_name: freezed == created_by_name ? _self.created_by_name : created_by_name // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialTransactionModel].
extension MaterialTransactionModelPatterns on MaterialTransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialTransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _MaterialTransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialTransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int material,  String? material_name,  String transaction_type,  String? transaction_type_display,  String quantity,  String? note,  int? created_by,  String? created_by_name,  String? created_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialTransactionModel() when $default != null:
return $default(_that.id,_that.material,_that.material_name,_that.transaction_type,_that.transaction_type_display,_that.quantity,_that.note,_that.created_by,_that.created_by_name,_that.created_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int material,  String? material_name,  String transaction_type,  String? transaction_type_display,  String quantity,  String? note,  int? created_by,  String? created_by_name,  String? created_at)  $default,) {final _that = this;
switch (_that) {
case _MaterialTransactionModel():
return $default(_that.id,_that.material,_that.material_name,_that.transaction_type,_that.transaction_type_display,_that.quantity,_that.note,_that.created_by,_that.created_by_name,_that.created_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int material,  String? material_name,  String transaction_type,  String? transaction_type_display,  String quantity,  String? note,  int? created_by,  String? created_by_name,  String? created_at)?  $default,) {final _that = this;
switch (_that) {
case _MaterialTransactionModel() when $default != null:
return $default(_that.id,_that.material,_that.material_name,_that.transaction_type,_that.transaction_type_display,_that.quantity,_that.note,_that.created_by,_that.created_by_name,_that.created_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialTransactionModel implements MaterialTransactionModel {
  const _MaterialTransactionModel({required this.id, required this.material, required this.material_name, required this.transaction_type, required this.transaction_type_display, required this.quantity, required this.note, required this.created_by, required this.created_by_name, required this.created_at});
  factory _MaterialTransactionModel.fromJson(Map<String, dynamic> json) => _$MaterialTransactionModelFromJson(json);

@override final  int id;
@override final  int material;
@override final  String? material_name;
@override final  String transaction_type;
@override final  String? transaction_type_display;
@override final  String quantity;
@override final  String? note;
@override final  int? created_by;
@override final  String? created_by_name;
@override final  String? created_at;

/// Create a copy of MaterialTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialTransactionModelCopyWith<_MaterialTransactionModel> get copyWith => __$MaterialTransactionModelCopyWithImpl<_MaterialTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.material, material) || other.material == material)&&(identical(other.material_name, material_name) || other.material_name == material_name)&&(identical(other.transaction_type, transaction_type) || other.transaction_type == transaction_type)&&(identical(other.transaction_type_display, transaction_type_display) || other.transaction_type_display == transaction_type_display)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.created_by, created_by) || other.created_by == created_by)&&(identical(other.created_by_name, created_by_name) || other.created_by_name == created_by_name)&&(identical(other.created_at, created_at) || other.created_at == created_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,material,material_name,transaction_type,transaction_type_display,quantity,note,created_by,created_by_name,created_at);
}

@override
String toString() {
    return 'MaterialTransactionModel(id: $id, material: $material, material_name: $material_name, transaction_type: $transaction_type, transaction_type_display: $transaction_type_display, quantity: $quantity, note: $note, created_by: $created_by, created_by_name: $created_by_name, created_at: $created_at)';
}


}

/// @nodoc
abstract mixin class _$MaterialTransactionModelCopyWith<$Res> implements $MaterialTransactionModelCopyWith<$Res> {
  factory _$MaterialTransactionModelCopyWith(_MaterialTransactionModel value, $Res Function(_MaterialTransactionModel) _then) = __$MaterialTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int material, String? material_name, String transaction_type, String? transaction_type_display, String quantity, String? note, int? created_by, String? created_by_name, String? created_at
});




}
/// @nodoc
class __$MaterialTransactionModelCopyWithImpl<$Res>
    implements _$MaterialTransactionModelCopyWith<$Res> {
  __$MaterialTransactionModelCopyWithImpl(this._self, this._then);

  final _MaterialTransactionModel _self;
  final $Res Function(_MaterialTransactionModel) _then;

/// Create a copy of MaterialTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? material = null,Object? material_name = freezed,Object? transaction_type = null,Object? transaction_type_display = freezed,Object? quantity = null,Object? note = freezed,Object? created_by = freezed,Object? created_by_name = freezed,Object? created_at = freezed,}) {
  return _then(_MaterialTransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as int,material_name: freezed == material_name ? _self.material_name : material_name // ignore: cast_nullable_to_non_nullable
as String?,transaction_type: null == transaction_type ? _self.transaction_type : transaction_type // ignore: cast_nullable_to_non_nullable
as String,transaction_type_display: freezed == transaction_type_display ? _self.transaction_type_display : transaction_type_display // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,created_by: freezed == created_by ? _self.created_by : created_by // ignore: cast_nullable_to_non_nullable
as int?,created_by_name: freezed == created_by_name ? _self.created_by_name : created_by_name // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
