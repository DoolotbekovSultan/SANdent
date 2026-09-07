// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinancialReportModel {

 ReportPeriodModel get period; int get total_appointments; num get total_revenue; num get avg_check; num get material_cost; num get profit; List<Map<String, dynamic>>? get revenue_by_procedure; List<Map<String, dynamic>>? get revenue_by_doctor; List<Map<String, dynamic>>? get material_usage; List<Map<String, dynamic>>? get daily_revenue;
/// Create a copy of FinancialReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialReportModelCopyWith<FinancialReportModel> get copyWith => _$FinancialReportModelCopyWithImpl<FinancialReportModel>(this as FinancialReportModel, _$identity);

  /// Serializes this FinancialReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinancialReportModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialReportModel&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.total_appointments, _this.total_appointments) || other.total_appointments == _this.total_appointments)&&(identical(other.total_revenue, _this.total_revenue) || other.total_revenue == _this.total_revenue)&&(identical(other.avg_check, _this.avg_check) || other.avg_check == _this.avg_check)&&(identical(other.material_cost, _this.material_cost) || other.material_cost == _this.material_cost)&&(identical(other.profit, _this.profit) || other.profit == _this.profit)&&const DeepCollectionEquality().equals(other.revenue_by_procedure, _this.revenue_by_procedure)&&const DeepCollectionEquality().equals(other.revenue_by_doctor, _this.revenue_by_doctor)&&const DeepCollectionEquality().equals(other.material_usage, _this.material_usage)&&const DeepCollectionEquality().equals(other.daily_revenue, _this.daily_revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinancialReportModel;
  return Object.hash(runtimeType,_this.period,_this.total_appointments,_this.total_revenue,_this.avg_check,_this.material_cost,_this.profit,const DeepCollectionEquality().hash(_this.revenue_by_procedure),const DeepCollectionEquality().hash(_this.revenue_by_doctor),const DeepCollectionEquality().hash(_this.material_usage),const DeepCollectionEquality().hash(_this.daily_revenue));
}

@override
String toString() {
  final _this = this as FinancialReportModel;
  return 'FinancialReportModel(period: ${_this.period}, total_appointments: ${_this.total_appointments}, total_revenue: ${_this.total_revenue}, avg_check: ${_this.avg_check}, material_cost: ${_this.material_cost}, profit: ${_this.profit}, revenue_by_procedure: ${_this.revenue_by_procedure}, revenue_by_doctor: ${_this.revenue_by_doctor}, material_usage: ${_this.material_usage}, daily_revenue: ${_this.daily_revenue})';
}


}

/// @nodoc
abstract mixin class $FinancialReportModelCopyWith<$Res>  {
  factory $FinancialReportModelCopyWith(FinancialReportModel value, $Res Function(FinancialReportModel) _then) = _$FinancialReportModelCopyWithImpl;
@useResult
$Res call({
 ReportPeriodModel period, int total_appointments, num total_revenue, num avg_check, num material_cost, num profit, List<Map<String, dynamic>>? revenue_by_procedure, List<Map<String, dynamic>>? revenue_by_doctor, List<Map<String, dynamic>>? material_usage, List<Map<String, dynamic>>? daily_revenue
});


$ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class _$FinancialReportModelCopyWithImpl<$Res>
    implements $FinancialReportModelCopyWith<$Res> {
  _$FinancialReportModelCopyWithImpl(this._self, this._then);

  final FinancialReportModel _self;
  final $Res Function(FinancialReportModel) _then;

/// Create a copy of FinancialReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? total_appointments = null,Object? total_revenue = null,Object? avg_check = null,Object? material_cost = null,Object? profit = null,Object? revenue_by_procedure = freezed,Object? revenue_by_doctor = freezed,Object? material_usage = freezed,Object? daily_revenue = freezed,}) {
  return _then(FinancialReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,total_revenue: null == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as num,avg_check: null == avg_check ? _self.avg_check : avg_check // ignore: cast_nullable_to_non_nullable
as num,material_cost: null == material_cost ? _self.material_cost : material_cost // ignore: cast_nullable_to_non_nullable
as num,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as num,revenue_by_procedure: freezed == revenue_by_procedure ? _self.revenue_by_procedure : revenue_by_procedure // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,revenue_by_doctor: freezed == revenue_by_doctor ? _self.revenue_by_doctor : revenue_by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,material_usage: freezed == material_usage ? _self.material_usage : material_usage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,daily_revenue: freezed == daily_revenue ? _self.daily_revenue : daily_revenue // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}
/// Create a copy of FinancialReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialReportModel].
extension FinancialReportModelPatterns on FinancialReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialReportModel value)  $default,){
final _that = this;
switch (_that) {
case _FinancialReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_appointments,  num total_revenue,  num avg_check,  num material_cost,  num profit,  List<Map<String, dynamic>>? revenue_by_procedure,  List<Map<String, dynamic>>? revenue_by_doctor,  List<Map<String, dynamic>>? material_usage,  List<Map<String, dynamic>>? daily_revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialReportModel() when $default != null:
return $default(_that.period,_that.total_appointments,_that.total_revenue,_that.avg_check,_that.material_cost,_that.profit,_that.revenue_by_procedure,_that.revenue_by_doctor,_that.material_usage,_that.daily_revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_appointments,  num total_revenue,  num avg_check,  num material_cost,  num profit,  List<Map<String, dynamic>>? revenue_by_procedure,  List<Map<String, dynamic>>? revenue_by_doctor,  List<Map<String, dynamic>>? material_usage,  List<Map<String, dynamic>>? daily_revenue)  $default,) {final _that = this;
switch (_that) {
case _FinancialReportModel():
return $default(_that.period,_that.total_appointments,_that.total_revenue,_that.avg_check,_that.material_cost,_that.profit,_that.revenue_by_procedure,_that.revenue_by_doctor,_that.material_usage,_that.daily_revenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriodModel period,  int total_appointments,  num total_revenue,  num avg_check,  num material_cost,  num profit,  List<Map<String, dynamic>>? revenue_by_procedure,  List<Map<String, dynamic>>? revenue_by_doctor,  List<Map<String, dynamic>>? material_usage,  List<Map<String, dynamic>>? daily_revenue)?  $default,) {final _that = this;
switch (_that) {
case _FinancialReportModel() when $default != null:
return $default(_that.period,_that.total_appointments,_that.total_revenue,_that.avg_check,_that.material_cost,_that.profit,_that.revenue_by_procedure,_that.revenue_by_doctor,_that.material_usage,_that.daily_revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialReportModel implements FinancialReportModel {
  const _FinancialReportModel({required this.period, required this.total_appointments, required this.total_revenue, required this.avg_check, required this.material_cost, required this.profit, required  List<Map<String, dynamic>>? revenue_by_procedure, required  List<Map<String, dynamic>>? revenue_by_doctor, required  List<Map<String, dynamic>>? material_usage, required  List<Map<String, dynamic>>? daily_revenue}): _revenue_by_procedure = revenue_by_procedure,_revenue_by_doctor = revenue_by_doctor,_material_usage = material_usage,_daily_revenue = daily_revenue;
  factory _FinancialReportModel.fromJson(Map<String, dynamic> json) => _$FinancialReportModelFromJson(json);

@override final  ReportPeriodModel period;
@override final  int total_appointments;
@override final  num total_revenue;
@override final  num avg_check;
@override final  num material_cost;
@override final  num profit;
 final  List<Map<String, dynamic>>? _revenue_by_procedure;
@override List<Map<String, dynamic>>? get revenue_by_procedure {
  final value = _revenue_by_procedure;
  if (value == null) return null;
  if (_revenue_by_procedure is EqualUnmodifiableListView) return _revenue_by_procedure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _revenue_by_doctor;
@override List<Map<String, dynamic>>? get revenue_by_doctor {
  final value = _revenue_by_doctor;
  if (value == null) return null;
  if (_revenue_by_doctor is EqualUnmodifiableListView) return _revenue_by_doctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _material_usage;
@override List<Map<String, dynamic>>? get material_usage {
  final value = _material_usage;
  if (value == null) return null;
  if (_material_usage is EqualUnmodifiableListView) return _material_usage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _daily_revenue;
@override List<Map<String, dynamic>>? get daily_revenue {
  final value = _daily_revenue;
  if (value == null) return null;
  if (_daily_revenue is EqualUnmodifiableListView) return _daily_revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FinancialReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialReportModelCopyWith<_FinancialReportModel> get copyWith => __$FinancialReportModelCopyWithImpl<_FinancialReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.total_appointments, total_appointments) || other.total_appointments == total_appointments)&&(identical(other.total_revenue, total_revenue) || other.total_revenue == total_revenue)&&(identical(other.avg_check, avg_check) || other.avg_check == avg_check)&&(identical(other.material_cost, material_cost) || other.material_cost == material_cost)&&(identical(other.profit, profit) || other.profit == profit)&&const DeepCollectionEquality().equals(other.revenue_by_procedure, _revenue_by_procedure)&&const DeepCollectionEquality().equals(other.revenue_by_doctor, _revenue_by_doctor)&&const DeepCollectionEquality().equals(other.material_usage, _material_usage)&&const DeepCollectionEquality().equals(other.daily_revenue, _daily_revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,total_appointments,total_revenue,avg_check,material_cost,profit,const DeepCollectionEquality().hash(_revenue_by_procedure),const DeepCollectionEquality().hash(_revenue_by_doctor),const DeepCollectionEquality().hash(_material_usage),const DeepCollectionEquality().hash(_daily_revenue));
}

@override
String toString() {
    return 'FinancialReportModel(period: $period, total_appointments: $total_appointments, total_revenue: $total_revenue, avg_check: $avg_check, material_cost: $material_cost, profit: $profit, revenue_by_procedure: $revenue_by_procedure, revenue_by_doctor: $revenue_by_doctor, material_usage: $material_usage, daily_revenue: $daily_revenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialReportModelCopyWith<$Res> implements $FinancialReportModelCopyWith<$Res> {
  factory _$FinancialReportModelCopyWith(_FinancialReportModel value, $Res Function(_FinancialReportModel) _then) = __$FinancialReportModelCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriodModel period, int total_appointments, num total_revenue, num avg_check, num material_cost, num profit, List<Map<String, dynamic>>? revenue_by_procedure, List<Map<String, dynamic>>? revenue_by_doctor, List<Map<String, dynamic>>? material_usage, List<Map<String, dynamic>>? daily_revenue
});


@override $ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class __$FinancialReportModelCopyWithImpl<$Res>
    implements _$FinancialReportModelCopyWith<$Res> {
  __$FinancialReportModelCopyWithImpl(this._self, this._then);

  final _FinancialReportModel _self;
  final $Res Function(_FinancialReportModel) _then;

/// Create a copy of FinancialReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? total_appointments = null,Object? total_revenue = null,Object? avg_check = null,Object? material_cost = null,Object? profit = null,Object? revenue_by_procedure = freezed,Object? revenue_by_doctor = freezed,Object? material_usage = freezed,Object? daily_revenue = freezed,}) {
  return _then(_FinancialReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_appointments: null == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int,total_revenue: null == total_revenue ? _self.total_revenue : total_revenue // ignore: cast_nullable_to_non_nullable
as num,avg_check: null == avg_check ? _self.avg_check : avg_check // ignore: cast_nullable_to_non_nullable
as num,material_cost: null == material_cost ? _self.material_cost : material_cost // ignore: cast_nullable_to_non_nullable
as num,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as num,revenue_by_procedure: freezed == revenue_by_procedure ? _self._revenue_by_procedure : revenue_by_procedure // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,revenue_by_doctor: freezed == revenue_by_doctor ? _self._revenue_by_doctor : revenue_by_doctor // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,material_usage: freezed == material_usage ? _self._material_usage : material_usage // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,daily_revenue: freezed == daily_revenue ? _self._daily_revenue : daily_revenue // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

/// Create a copy of FinancialReportModel
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
