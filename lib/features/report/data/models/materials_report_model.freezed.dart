// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materials_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialsReportModel {

 ReportPeriodModel get period; int get total_materials_used; int get total_quantity; int get unique_materials; List<Map<String, dynamic>>? get top_materials; List<Map<String, dynamic>>? get by_doctor; List<Map<String, dynamic>>? get material_details;
/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialsReportModelCopyWith<MaterialsReportModel> get copyWith => _$MaterialsReportModelCopyWithImpl<MaterialsReportModel>(this as MaterialsReportModel, _$identity);

  /// Serializes this MaterialsReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MaterialsReportModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialsReportModel&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.total_materials_used, _this.total_materials_used) || other.total_materials_used == _this.total_materials_used)&&(identical(other.total_quantity, _this.total_quantity) || other.total_quantity == _this.total_quantity)&&(identical(other.unique_materials, _this.unique_materials) || other.unique_materials == _this.unique_materials)&&const DeepCollectionEquality().equals(other.top_materials, _this.top_materials)&&const DeepCollectionEquality().equals(other.by_doctor, _this.by_doctor)&&const DeepCollectionEquality().equals(other.material_details, _this.material_details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MaterialsReportModel;
  return Object.hash(runtimeType,_this.period,_this.total_materials_used,_this.total_quantity,_this.unique_materials,const DeepCollectionEquality().hash(_this.top_materials),const DeepCollectionEquality().hash(_this.by_doctor),const DeepCollectionEquality().hash(_this.material_details));
}

@override
String toString() {
  final _this = this as MaterialsReportModel;
  return 'MaterialsReportModel(period: ${_this.period}, total_materials_used: ${_this.total_materials_used}, total_quantity: ${_this.total_quantity}, unique_materials: ${_this.unique_materials}, top_materials: ${_this.top_materials}, by_doctor: ${_this.by_doctor}, material_details: ${_this.material_details})';
}


}

/// @nodoc
abstract mixin class $MaterialsReportModelCopyWith<$Res>  {
  factory $MaterialsReportModelCopyWith(MaterialsReportModel value, $Res Function(MaterialsReportModel) _then) = _$MaterialsReportModelCopyWithImpl;
@useResult
$Res call({
 ReportPeriodModel period, int total_materials_used, int total_quantity, int unique_materials, List<Map<String, dynamic>>? top_materials, List<Map<String, dynamic>>? by_doctor, List<Map<String, dynamic>>? material_details
});


$ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class _$MaterialsReportModelCopyWithImpl<$Res>
    implements $MaterialsReportModelCopyWith<$Res> {
  _$MaterialsReportModelCopyWithImpl(this._self, this._then);

  final MaterialsReportModel _self;
  final $Res Function(MaterialsReportModel) _then;

/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? total_materials_used = null,Object? total_quantity = null,Object? unique_materials = null,Object? top_materials = freezed,Object? by_doctor = freezed,Object? material_details = freezed,}) {
  return _then(MaterialsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_materials_used: null == total_materials_used ? _self.total_materials_used : total_materials_used // ignore: cast_nullable_to_non_nullable
as int,total_quantity: null == total_quantity ? _self.total_quantity : total_quantity // ignore: cast_nullable_to_non_nullable
as int,unique_materials: null == unique_materials ? _self.unique_materials : unique_materials // ignore: cast_nullable_to_non_nullable
as int,top_materials: freezed == top_materials ? _self.top_materials : top_materials // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_doctor: freezed == by_doctor ? _self.by_doctor : by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,material_details: freezed == material_details ? _self.material_details : material_details // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}
/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [MaterialsReportModel].
extension MaterialsReportModelPatterns on MaterialsReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialsReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialsReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialsReportModel value)  $default,){
final _that = this;
switch (_that) {
case _MaterialsReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialsReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialsReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_materials_used,  int total_quantity,  int unique_materials,  List<Map<String, dynamic>>? top_materials,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? material_details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialsReportModel() when $default != null:
return $default(_that.period,_that.total_materials_used,_that.total_quantity,_that.unique_materials,_that.top_materials,_that.by_doctor,_that.material_details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_materials_used,  int total_quantity,  int unique_materials,  List<Map<String, dynamic>>? top_materials,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? material_details)  $default,) {final _that = this;
switch (_that) {
case _MaterialsReportModel():
return $default(_that.period,_that.total_materials_used,_that.total_quantity,_that.unique_materials,_that.top_materials,_that.by_doctor,_that.material_details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriodModel period,  int total_materials_used,  int total_quantity,  int unique_materials,  List<Map<String, dynamic>>? top_materials,  List<Map<String, dynamic>>? by_doctor,  List<Map<String, dynamic>>? material_details)?  $default,) {final _that = this;
switch (_that) {
case _MaterialsReportModel() when $default != null:
return $default(_that.period,_that.total_materials_used,_that.total_quantity,_that.unique_materials,_that.top_materials,_that.by_doctor,_that.material_details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialsReportModel implements MaterialsReportModel {
  const _MaterialsReportModel({required this.period, required this.total_materials_used, required this.total_quantity, required this.unique_materials, required  List<Map<String, dynamic>>? top_materials, required  List<Map<String, dynamic>>? by_doctor, required  List<Map<String, dynamic>>? material_details}): _top_materials = top_materials,_by_doctor = by_doctor,_material_details = material_details;
  factory _MaterialsReportModel.fromJson(Map<String, dynamic> json) => _$MaterialsReportModelFromJson(json);

@override final  ReportPeriodModel period;
@override final  int total_materials_used;
@override final  int total_quantity;
@override final  int unique_materials;
 final  List<Map<String, dynamic>>? _top_materials;
@override List<Map<String, dynamic>>? get top_materials {
  final value = _top_materials;
  if (value == null) return null;
  if (_top_materials is EqualUnmodifiableListView) return _top_materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _by_doctor;
@override List<Map<String, dynamic>>? get by_doctor {
  final value = _by_doctor;
  if (value == null) return null;
  if (_by_doctor is EqualUnmodifiableListView) return _by_doctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _material_details;
@override List<Map<String, dynamic>>? get material_details {
  final value = _material_details;
  if (value == null) return null;
  if (_material_details is EqualUnmodifiableListView) return _material_details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialsReportModelCopyWith<_MaterialsReportModel> get copyWith => __$MaterialsReportModelCopyWithImpl<_MaterialsReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialsReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialsReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.total_materials_used, total_materials_used) || other.total_materials_used == total_materials_used)&&(identical(other.total_quantity, total_quantity) || other.total_quantity == total_quantity)&&(identical(other.unique_materials, unique_materials) || other.unique_materials == unique_materials)&&const DeepCollectionEquality().equals(other.top_materials, _top_materials)&&const DeepCollectionEquality().equals(other.by_doctor, _by_doctor)&&const DeepCollectionEquality().equals(other.material_details, _material_details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,total_materials_used,total_quantity,unique_materials,const DeepCollectionEquality().hash(_top_materials),const DeepCollectionEquality().hash(_by_doctor),const DeepCollectionEquality().hash(_material_details));
}

@override
String toString() {
    return 'MaterialsReportModel(period: $period, total_materials_used: $total_materials_used, total_quantity: $total_quantity, unique_materials: $unique_materials, top_materials: $top_materials, by_doctor: $by_doctor, material_details: $material_details)';
}


}

/// @nodoc
abstract mixin class _$MaterialsReportModelCopyWith<$Res> implements $MaterialsReportModelCopyWith<$Res> {
  factory _$MaterialsReportModelCopyWith(_MaterialsReportModel value, $Res Function(_MaterialsReportModel) _then) = __$MaterialsReportModelCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriodModel period, int total_materials_used, int total_quantity, int unique_materials, List<Map<String, dynamic>>? top_materials, List<Map<String, dynamic>>? by_doctor, List<Map<String, dynamic>>? material_details
});


@override $ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class __$MaterialsReportModelCopyWithImpl<$Res>
    implements _$MaterialsReportModelCopyWith<$Res> {
  __$MaterialsReportModelCopyWithImpl(this._self, this._then);

  final _MaterialsReportModel _self;
  final $Res Function(_MaterialsReportModel) _then;

/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? total_materials_used = null,Object? total_quantity = null,Object? unique_materials = null,Object? top_materials = freezed,Object? by_doctor = freezed,Object? material_details = freezed,}) {
  return _then(_MaterialsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_materials_used: null == total_materials_used ? _self.total_materials_used : total_materials_used // ignore: cast_nullable_to_non_nullable
as int,total_quantity: null == total_quantity ? _self.total_quantity : total_quantity // ignore: cast_nullable_to_non_nullable
as int,unique_materials: null == unique_materials ? _self.unique_materials : unique_materials // ignore: cast_nullable_to_non_nullable
as int,top_materials: freezed == top_materials ? _self._top_materials : top_materials // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_doctor: freezed == by_doctor ? _self._by_doctor : by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,material_details: freezed == material_details ? _self._material_details : material_details // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

/// Create a copy of MaterialsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}

// dart format on
