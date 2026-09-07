// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materials_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialsReportEntity {

 String? get startDate; String? get endDate; int get days; int get totalMaterialsUsed; int get totalQuantity; int get uniqueMaterials; List<Map<String, dynamic>> get topMaterials; List<Map<String, dynamic>> get byDoctor; List<Map<String, dynamic>> get materialDetails;
/// Create a copy of MaterialsReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialsReportEntityCopyWith<MaterialsReportEntity> get copyWith => _$MaterialsReportEntityCopyWithImpl<MaterialsReportEntity>(this as MaterialsReportEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MaterialsReportEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialsReportEntity&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.totalMaterialsUsed, _this.totalMaterialsUsed) || other.totalMaterialsUsed == _this.totalMaterialsUsed)&&(identical(other.totalQuantity, _this.totalQuantity) || other.totalQuantity == _this.totalQuantity)&&(identical(other.uniqueMaterials, _this.uniqueMaterials) || other.uniqueMaterials == _this.uniqueMaterials)&&const DeepCollectionEquality().equals(other.topMaterials, _this.topMaterials)&&const DeepCollectionEquality().equals(other.byDoctor, _this.byDoctor)&&const DeepCollectionEquality().equals(other.materialDetails, _this.materialDetails));
}


@override
int get hashCode {
  final _this = this as MaterialsReportEntity;
  return Object.hash(runtimeType,_this.startDate,_this.endDate,_this.days,_this.totalMaterialsUsed,_this.totalQuantity,_this.uniqueMaterials,const DeepCollectionEquality().hash(_this.topMaterials),const DeepCollectionEquality().hash(_this.byDoctor),const DeepCollectionEquality().hash(_this.materialDetails));
}

@override
String toString() {
  final _this = this as MaterialsReportEntity;
  return 'MaterialsReportEntity(startDate: ${_this.startDate}, endDate: ${_this.endDate}, days: ${_this.days}, totalMaterialsUsed: ${_this.totalMaterialsUsed}, totalQuantity: ${_this.totalQuantity}, uniqueMaterials: ${_this.uniqueMaterials}, topMaterials: ${_this.topMaterials}, byDoctor: ${_this.byDoctor}, materialDetails: ${_this.materialDetails})';
}


}

/// @nodoc
abstract mixin class $MaterialsReportEntityCopyWith<$Res>  {
  factory $MaterialsReportEntityCopyWith(MaterialsReportEntity value, $Res Function(MaterialsReportEntity) _then) = _$MaterialsReportEntityCopyWithImpl;
@useResult
$Res call({
 String? startDate, String? endDate, int days, int totalMaterialsUsed, int totalQuantity, int uniqueMaterials, List<Map<String, dynamic>> topMaterials, List<Map<String, dynamic>> byDoctor, List<Map<String, dynamic>> materialDetails
});




}
/// @nodoc
class _$MaterialsReportEntityCopyWithImpl<$Res>
    implements $MaterialsReportEntityCopyWith<$Res> {
  _$MaterialsReportEntityCopyWithImpl(this._self, this._then);

  final MaterialsReportEntity _self;
  final $Res Function(MaterialsReportEntity) _then;

/// Create a copy of MaterialsReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalMaterialsUsed = null,Object? totalQuantity = null,Object? uniqueMaterials = null,Object? topMaterials = null,Object? byDoctor = null,Object? materialDetails = null,}) {
  return _then(MaterialsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalMaterialsUsed: null == totalMaterialsUsed ? _self.totalMaterialsUsed : totalMaterialsUsed // ignore: cast_nullable_to_non_nullable
as int,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,uniqueMaterials: null == uniqueMaterials ? _self.uniqueMaterials : uniqueMaterials // ignore: cast_nullable_to_non_nullable
as int,topMaterials: null == topMaterials ? _self.topMaterials : topMaterials // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDoctor: null == byDoctor ? _self.byDoctor : byDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,materialDetails: null == materialDetails ? _self.materialDetails : materialDetails // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialsReportEntity].
extension MaterialsReportEntityPatterns on MaterialsReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialsReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialsReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialsReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _MaterialsReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialsReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialsReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalMaterialsUsed,  int totalQuantity,  int uniqueMaterials,  List<Map<String, dynamic>> topMaterials,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> materialDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalMaterialsUsed,_that.totalQuantity,_that.uniqueMaterials,_that.topMaterials,_that.byDoctor,_that.materialDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalMaterialsUsed,  int totalQuantity,  int uniqueMaterials,  List<Map<String, dynamic>> topMaterials,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> materialDetails)  $default,) {final _that = this;
switch (_that) {
case _MaterialsReportEntity():
return $default(_that.startDate,_that.endDate,_that.days,_that.totalMaterialsUsed,_that.totalQuantity,_that.uniqueMaterials,_that.topMaterials,_that.byDoctor,_that.materialDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? startDate,  String? endDate,  int days,  int totalMaterialsUsed,  int totalQuantity,  int uniqueMaterials,  List<Map<String, dynamic>> topMaterials,  List<Map<String, dynamic>> byDoctor,  List<Map<String, dynamic>> materialDetails)?  $default,) {final _that = this;
switch (_that) {
case _MaterialsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalMaterialsUsed,_that.totalQuantity,_that.uniqueMaterials,_that.topMaterials,_that.byDoctor,_that.materialDetails);case _:
  return null;

}
}

}

/// @nodoc


class _MaterialsReportEntity implements MaterialsReportEntity {
  const _MaterialsReportEntity({required this.startDate, required this.endDate, required this.days, required this.totalMaterialsUsed, required this.totalQuantity, required this.uniqueMaterials, required  List<Map<String, dynamic>> topMaterials, required  List<Map<String, dynamic>> byDoctor, required  List<Map<String, dynamic>> materialDetails}): _topMaterials = topMaterials,_byDoctor = byDoctor,_materialDetails = materialDetails;
  

@override final  String? startDate;
@override final  String? endDate;
@override final  int days;
@override final  int totalMaterialsUsed;
@override final  int totalQuantity;
@override final  int uniqueMaterials;
 final  List<Map<String, dynamic>> _topMaterials;
@override List<Map<String, dynamic>> get topMaterials {
  if (_topMaterials is EqualUnmodifiableListView) return _topMaterials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topMaterials);
}

 final  List<Map<String, dynamic>> _byDoctor;
@override List<Map<String, dynamic>> get byDoctor {
  if (_byDoctor is EqualUnmodifiableListView) return _byDoctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byDoctor);
}

 final  List<Map<String, dynamic>> _materialDetails;
@override List<Map<String, dynamic>> get materialDetails {
  if (_materialDetails is EqualUnmodifiableListView) return _materialDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialDetails);
}


/// Create a copy of MaterialsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialsReportEntityCopyWith<_MaterialsReportEntity> get copyWith => __$MaterialsReportEntityCopyWithImpl<_MaterialsReportEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialsReportEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.totalMaterialsUsed, totalMaterialsUsed) || other.totalMaterialsUsed == totalMaterialsUsed)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.uniqueMaterials, uniqueMaterials) || other.uniqueMaterials == uniqueMaterials)&&const DeepCollectionEquality().equals(other.topMaterials, _topMaterials)&&const DeepCollectionEquality().equals(other.byDoctor, _byDoctor)&&const DeepCollectionEquality().equals(other.materialDetails, _materialDetails));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startDate,endDate,days,totalMaterialsUsed,totalQuantity,uniqueMaterials,const DeepCollectionEquality().hash(_topMaterials),const DeepCollectionEquality().hash(_byDoctor),const DeepCollectionEquality().hash(_materialDetails));
}

@override
String toString() {
    return 'MaterialsReportEntity(startDate: $startDate, endDate: $endDate, days: $days, totalMaterialsUsed: $totalMaterialsUsed, totalQuantity: $totalQuantity, uniqueMaterials: $uniqueMaterials, topMaterials: $topMaterials, byDoctor: $byDoctor, materialDetails: $materialDetails)';
}


}

/// @nodoc
abstract mixin class _$MaterialsReportEntityCopyWith<$Res> implements $MaterialsReportEntityCopyWith<$Res> {
  factory _$MaterialsReportEntityCopyWith(_MaterialsReportEntity value, $Res Function(_MaterialsReportEntity) _then) = __$MaterialsReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String? startDate, String? endDate, int days, int totalMaterialsUsed, int totalQuantity, int uniqueMaterials, List<Map<String, dynamic>> topMaterials, List<Map<String, dynamic>> byDoctor, List<Map<String, dynamic>> materialDetails
});




}
/// @nodoc
class __$MaterialsReportEntityCopyWithImpl<$Res>
    implements _$MaterialsReportEntityCopyWith<$Res> {
  __$MaterialsReportEntityCopyWithImpl(this._self, this._then);

  final _MaterialsReportEntity _self;
  final $Res Function(_MaterialsReportEntity) _then;

/// Create a copy of MaterialsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalMaterialsUsed = null,Object? totalQuantity = null,Object? uniqueMaterials = null,Object? topMaterials = null,Object? byDoctor = null,Object? materialDetails = null,}) {
  return _then(_MaterialsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalMaterialsUsed: null == totalMaterialsUsed ? _self.totalMaterialsUsed : totalMaterialsUsed // ignore: cast_nullable_to_non_nullable
as int,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,uniqueMaterials: null == uniqueMaterials ? _self.uniqueMaterials : uniqueMaterials // ignore: cast_nullable_to_non_nullable
as int,topMaterials: null == topMaterials ? _self._topMaterials : topMaterials // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byDoctor: null == byDoctor ? _self._byDoctor : byDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,materialDetails: null == materialDetails ? _self._materialDetails : materialDetails // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

// dart format on
