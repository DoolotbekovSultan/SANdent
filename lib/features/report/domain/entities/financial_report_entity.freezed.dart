// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialReportEntity {

 String? get startDate; String? get endDate; int get days; int get totalAppointments; num get totalRevenue; num get avgCheck; num get materialCost; num get profit; List<Map<String, dynamic>> get revenueByProcedure; List<Map<String, dynamic>> get revenueByDoctor; List<Map<String, dynamic>> get materialUsage; List<Map<String, dynamic>> get dailyRevenue;
/// Create a copy of FinancialReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialReportEntityCopyWith<FinancialReportEntity> get copyWith => _$FinancialReportEntityCopyWithImpl<FinancialReportEntity>(this as FinancialReportEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FinancialReportEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialReportEntity&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.totalAppointments, _this.totalAppointments) || other.totalAppointments == _this.totalAppointments)&&(identical(other.totalRevenue, _this.totalRevenue) || other.totalRevenue == _this.totalRevenue)&&(identical(other.avgCheck, _this.avgCheck) || other.avgCheck == _this.avgCheck)&&(identical(other.materialCost, _this.materialCost) || other.materialCost == _this.materialCost)&&(identical(other.profit, _this.profit) || other.profit == _this.profit)&&const DeepCollectionEquality().equals(other.revenueByProcedure, _this.revenueByProcedure)&&const DeepCollectionEquality().equals(other.revenueByDoctor, _this.revenueByDoctor)&&const DeepCollectionEquality().equals(other.materialUsage, _this.materialUsage)&&const DeepCollectionEquality().equals(other.dailyRevenue, _this.dailyRevenue));
}


@override
int get hashCode {
  final _this = this as FinancialReportEntity;
  return Object.hash(runtimeType,_this.startDate,_this.endDate,_this.days,_this.totalAppointments,_this.totalRevenue,_this.avgCheck,_this.materialCost,_this.profit,const DeepCollectionEquality().hash(_this.revenueByProcedure),const DeepCollectionEquality().hash(_this.revenueByDoctor),const DeepCollectionEquality().hash(_this.materialUsage),const DeepCollectionEquality().hash(_this.dailyRevenue));
}

@override
String toString() {
  final _this = this as FinancialReportEntity;
  return 'FinancialReportEntity(startDate: ${_this.startDate}, endDate: ${_this.endDate}, days: ${_this.days}, totalAppointments: ${_this.totalAppointments}, totalRevenue: ${_this.totalRevenue}, avgCheck: ${_this.avgCheck}, materialCost: ${_this.materialCost}, profit: ${_this.profit}, revenueByProcedure: ${_this.revenueByProcedure}, revenueByDoctor: ${_this.revenueByDoctor}, materialUsage: ${_this.materialUsage}, dailyRevenue: ${_this.dailyRevenue})';
}


}

/// @nodoc
abstract mixin class $FinancialReportEntityCopyWith<$Res>  {
  factory $FinancialReportEntityCopyWith(FinancialReportEntity value, $Res Function(FinancialReportEntity) _then) = _$FinancialReportEntityCopyWithImpl;
@useResult
$Res call({
 String? startDate, String? endDate, int days, int totalAppointments, num totalRevenue, num avgCheck, num materialCost, num profit, List<Map<String, dynamic>> revenueByProcedure, List<Map<String, dynamic>> revenueByDoctor, List<Map<String, dynamic>> materialUsage, List<Map<String, dynamic>> dailyRevenue
});




}
/// @nodoc
class _$FinancialReportEntityCopyWithImpl<$Res>
    implements $FinancialReportEntityCopyWith<$Res> {
  _$FinancialReportEntityCopyWithImpl(this._self, this._then);

  final FinancialReportEntity _self;
  final $Res Function(FinancialReportEntity) _then;

/// Create a copy of FinancialReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalAppointments = null,Object? totalRevenue = null,Object? avgCheck = null,Object? materialCost = null,Object? profit = null,Object? revenueByProcedure = null,Object? revenueByDoctor = null,Object? materialUsage = null,Object? dailyRevenue = null,}) {
  return _then(FinancialReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as num,avgCheck: null == avgCheck ? _self.avgCheck : avgCheck // ignore: cast_nullable_to_non_nullable
as num,materialCost: null == materialCost ? _self.materialCost : materialCost // ignore: cast_nullable_to_non_nullable
as num,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as num,revenueByProcedure: null == revenueByProcedure ? _self.revenueByProcedure : revenueByProcedure // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,revenueByDoctor: null == revenueByDoctor ? _self.revenueByDoctor : revenueByDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,materialUsage: null == materialUsage ? _self.materialUsage : materialUsage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,dailyRevenue: null == dailyRevenue ? _self.dailyRevenue : dailyRevenue // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialReportEntity].
extension FinancialReportEntityPatterns on FinancialReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _FinancialReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalAppointments,  num totalRevenue,  num avgCheck,  num materialCost,  num profit,  List<Map<String, dynamic>> revenueByProcedure,  List<Map<String, dynamic>> revenueByDoctor,  List<Map<String, dynamic>> materialUsage,  List<Map<String, dynamic>> dailyRevenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalAppointments,_that.totalRevenue,_that.avgCheck,_that.materialCost,_that.profit,_that.revenueByProcedure,_that.revenueByDoctor,_that.materialUsage,_that.dailyRevenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalAppointments,  num totalRevenue,  num avgCheck,  num materialCost,  num profit,  List<Map<String, dynamic>> revenueByProcedure,  List<Map<String, dynamic>> revenueByDoctor,  List<Map<String, dynamic>> materialUsage,  List<Map<String, dynamic>> dailyRevenue)  $default,) {final _that = this;
switch (_that) {
case _FinancialReportEntity():
return $default(_that.startDate,_that.endDate,_that.days,_that.totalAppointments,_that.totalRevenue,_that.avgCheck,_that.materialCost,_that.profit,_that.revenueByProcedure,_that.revenueByDoctor,_that.materialUsage,_that.dailyRevenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? startDate,  String? endDate,  int days,  int totalAppointments,  num totalRevenue,  num avgCheck,  num materialCost,  num profit,  List<Map<String, dynamic>> revenueByProcedure,  List<Map<String, dynamic>> revenueByDoctor,  List<Map<String, dynamic>> materialUsage,  List<Map<String, dynamic>> dailyRevenue)?  $default,) {final _that = this;
switch (_that) {
case _FinancialReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalAppointments,_that.totalRevenue,_that.avgCheck,_that.materialCost,_that.profit,_that.revenueByProcedure,_that.revenueByDoctor,_that.materialUsage,_that.dailyRevenue);case _:
  return null;

}
}

}

/// @nodoc


class _FinancialReportEntity implements FinancialReportEntity {
  const _FinancialReportEntity({required this.startDate, required this.endDate, required this.days, required this.totalAppointments, required this.totalRevenue, required this.avgCheck, required this.materialCost, required this.profit, required  List<Map<String, dynamic>> revenueByProcedure, required  List<Map<String, dynamic>> revenueByDoctor, required  List<Map<String, dynamic>> materialUsage, required  List<Map<String, dynamic>> dailyRevenue}): _revenueByProcedure = revenueByProcedure,_revenueByDoctor = revenueByDoctor,_materialUsage = materialUsage,_dailyRevenue = dailyRevenue;
  

@override final  String? startDate;
@override final  String? endDate;
@override final  int days;
@override final  int totalAppointments;
@override final  num totalRevenue;
@override final  num avgCheck;
@override final  num materialCost;
@override final  num profit;
 final  List<Map<String, dynamic>> _revenueByProcedure;
@override List<Map<String, dynamic>> get revenueByProcedure {
  if (_revenueByProcedure is EqualUnmodifiableListView) return _revenueByProcedure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenueByProcedure);
}

 final  List<Map<String, dynamic>> _revenueByDoctor;
@override List<Map<String, dynamic>> get revenueByDoctor {
  if (_revenueByDoctor is EqualUnmodifiableListView) return _revenueByDoctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenueByDoctor);
}

 final  List<Map<String, dynamic>> _materialUsage;
@override List<Map<String, dynamic>> get materialUsage {
  if (_materialUsage is EqualUnmodifiableListView) return _materialUsage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialUsage);
}

 final  List<Map<String, dynamic>> _dailyRevenue;
@override List<Map<String, dynamic>> get dailyRevenue {
  if (_dailyRevenue is EqualUnmodifiableListView) return _dailyRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dailyRevenue);
}


/// Create a copy of FinancialReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialReportEntityCopyWith<_FinancialReportEntity> get copyWith => __$FinancialReportEntityCopyWithImpl<_FinancialReportEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialReportEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.totalAppointments, totalAppointments) || other.totalAppointments == totalAppointments)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.avgCheck, avgCheck) || other.avgCheck == avgCheck)&&(identical(other.materialCost, materialCost) || other.materialCost == materialCost)&&(identical(other.profit, profit) || other.profit == profit)&&const DeepCollectionEquality().equals(other.revenueByProcedure, _revenueByProcedure)&&const DeepCollectionEquality().equals(other.revenueByDoctor, _revenueByDoctor)&&const DeepCollectionEquality().equals(other.materialUsage, _materialUsage)&&const DeepCollectionEquality().equals(other.dailyRevenue, _dailyRevenue));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startDate,endDate,days,totalAppointments,totalRevenue,avgCheck,materialCost,profit,const DeepCollectionEquality().hash(_revenueByProcedure),const DeepCollectionEquality().hash(_revenueByDoctor),const DeepCollectionEquality().hash(_materialUsage),const DeepCollectionEquality().hash(_dailyRevenue));
}

@override
String toString() {
    return 'FinancialReportEntity(startDate: $startDate, endDate: $endDate, days: $days, totalAppointments: $totalAppointments, totalRevenue: $totalRevenue, avgCheck: $avgCheck, materialCost: $materialCost, profit: $profit, revenueByProcedure: $revenueByProcedure, revenueByDoctor: $revenueByDoctor, materialUsage: $materialUsage, dailyRevenue: $dailyRevenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialReportEntityCopyWith<$Res> implements $FinancialReportEntityCopyWith<$Res> {
  factory _$FinancialReportEntityCopyWith(_FinancialReportEntity value, $Res Function(_FinancialReportEntity) _then) = __$FinancialReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String? startDate, String? endDate, int days, int totalAppointments, num totalRevenue, num avgCheck, num materialCost, num profit, List<Map<String, dynamic>> revenueByProcedure, List<Map<String, dynamic>> revenueByDoctor, List<Map<String, dynamic>> materialUsage, List<Map<String, dynamic>> dailyRevenue
});




}
/// @nodoc
class __$FinancialReportEntityCopyWithImpl<$Res>
    implements _$FinancialReportEntityCopyWith<$Res> {
  __$FinancialReportEntityCopyWithImpl(this._self, this._then);

  final _FinancialReportEntity _self;
  final $Res Function(_FinancialReportEntity) _then;

/// Create a copy of FinancialReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalAppointments = null,Object? totalRevenue = null,Object? avgCheck = null,Object? materialCost = null,Object? profit = null,Object? revenueByProcedure = null,Object? revenueByDoctor = null,Object? materialUsage = null,Object? dailyRevenue = null,}) {
  return _then(_FinancialReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalAppointments: null == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as num,avgCheck: null == avgCheck ? _self.avgCheck : avgCheck // ignore: cast_nullable_to_non_nullable
as num,materialCost: null == materialCost ? _self.materialCost : materialCost // ignore: cast_nullable_to_non_nullable
as num,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as num,revenueByProcedure: null == revenueByProcedure ? _self._revenueByProcedure : revenueByProcedure // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,revenueByDoctor: null == revenueByDoctor ? _self._revenueByDoctor : revenueByDoctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,materialUsage: null == materialUsage ? _self._materialUsage : materialUsage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,dailyRevenue: null == dailyRevenue ? _self._dailyRevenue : dailyRevenue // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

// dart format on
