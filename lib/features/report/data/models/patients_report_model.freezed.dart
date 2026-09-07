// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patients_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientsReportModel {

 ReportPeriodModel get period; int get total_patients; int get new_patients; int get active_patients; int get repeat_patients; List<Map<String, dynamic>>? get by_gender; Map<String, dynamic>? get by_age_group; List<Map<String, dynamic>>? get patient_list;
/// Create a copy of PatientsReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientsReportModelCopyWith<PatientsReportModel> get copyWith => _$PatientsReportModelCopyWithImpl<PatientsReportModel>(this as PatientsReportModel, _$identity);

  /// Serializes this PatientsReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientsReportModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientsReportModel&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.total_patients, _this.total_patients) || other.total_patients == _this.total_patients)&&(identical(other.new_patients, _this.new_patients) || other.new_patients == _this.new_patients)&&(identical(other.active_patients, _this.active_patients) || other.active_patients == _this.active_patients)&&(identical(other.repeat_patients, _this.repeat_patients) || other.repeat_patients == _this.repeat_patients)&&const DeepCollectionEquality().equals(other.by_gender, _this.by_gender)&&const DeepCollectionEquality().equals(other.by_age_group, _this.by_age_group)&&const DeepCollectionEquality().equals(other.patient_list, _this.patient_list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientsReportModel;
  return Object.hash(runtimeType,_this.period,_this.total_patients,_this.new_patients,_this.active_patients,_this.repeat_patients,const DeepCollectionEquality().hash(_this.by_gender),const DeepCollectionEquality().hash(_this.by_age_group),const DeepCollectionEquality().hash(_this.patient_list));
}

@override
String toString() {
  final _this = this as PatientsReportModel;
  return 'PatientsReportModel(period: ${_this.period}, total_patients: ${_this.total_patients}, new_patients: ${_this.new_patients}, active_patients: ${_this.active_patients}, repeat_patients: ${_this.repeat_patients}, by_gender: ${_this.by_gender}, by_age_group: ${_this.by_age_group}, patient_list: ${_this.patient_list})';
}


}

/// @nodoc
abstract mixin class $PatientsReportModelCopyWith<$Res>  {
  factory $PatientsReportModelCopyWith(PatientsReportModel value, $Res Function(PatientsReportModel) _then) = _$PatientsReportModelCopyWithImpl;
@useResult
$Res call({
 ReportPeriodModel period, int total_patients, int new_patients, int active_patients, int repeat_patients, List<Map<String, dynamic>>? by_gender, Map<String, dynamic>? by_age_group, List<Map<String, dynamic>>? patient_list
});


$ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class _$PatientsReportModelCopyWithImpl<$Res>
    implements $PatientsReportModelCopyWith<$Res> {
  _$PatientsReportModelCopyWithImpl(this._self, this._then);

  final PatientsReportModel _self;
  final $Res Function(PatientsReportModel) _then;

/// Create a copy of PatientsReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? total_patients = null,Object? new_patients = null,Object? active_patients = null,Object? repeat_patients = null,Object? by_gender = freezed,Object? by_age_group = freezed,Object? patient_list = freezed,}) {
  return _then(PatientsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_patients: null == total_patients ? _self.total_patients : total_patients // ignore: cast_nullable_to_non_nullable
as int,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,active_patients: null == active_patients ? _self.active_patients : active_patients // ignore: cast_nullable_to_non_nullable
as int,repeat_patients: null == repeat_patients ? _self.repeat_patients : repeat_patients // ignore: cast_nullable_to_non_nullable
as int,by_gender: freezed == by_gender ? _self.by_gender : by_gender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_age_group: freezed == by_age_group ? _self.by_age_group : by_age_group // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,patient_list: freezed == patient_list ? _self.patient_list : patient_list // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}
/// Create a copy of PatientsReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodModelCopyWith<$Res> get period {
  
  return $ReportPeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientsReportModel].
extension PatientsReportModelPatterns on PatientsReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientsReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientsReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientsReportModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientsReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientsReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientsReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_patients,  int new_patients,  int active_patients,  int repeat_patients,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  List<Map<String, dynamic>>? patient_list)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientsReportModel() when $default != null:
return $default(_that.period,_that.total_patients,_that.new_patients,_that.active_patients,_that.repeat_patients,_that.by_gender,_that.by_age_group,_that.patient_list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriodModel period,  int total_patients,  int new_patients,  int active_patients,  int repeat_patients,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  List<Map<String, dynamic>>? patient_list)  $default,) {final _that = this;
switch (_that) {
case _PatientsReportModel():
return $default(_that.period,_that.total_patients,_that.new_patients,_that.active_patients,_that.repeat_patients,_that.by_gender,_that.by_age_group,_that.patient_list);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriodModel period,  int total_patients,  int new_patients,  int active_patients,  int repeat_patients,  List<Map<String, dynamic>>? by_gender,  Map<String, dynamic>? by_age_group,  List<Map<String, dynamic>>? patient_list)?  $default,) {final _that = this;
switch (_that) {
case _PatientsReportModel() when $default != null:
return $default(_that.period,_that.total_patients,_that.new_patients,_that.active_patients,_that.repeat_patients,_that.by_gender,_that.by_age_group,_that.patient_list);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientsReportModel implements PatientsReportModel {
  const _PatientsReportModel({required this.period, required this.total_patients, required this.new_patients, required this.active_patients, required this.repeat_patients, required  List<Map<String, dynamic>>? by_gender, required  Map<String, dynamic>? by_age_group, required  List<Map<String, dynamic>>? patient_list}): _by_gender = by_gender,_by_age_group = by_age_group,_patient_list = patient_list;
  factory _PatientsReportModel.fromJson(Map<String, dynamic> json) => _$PatientsReportModelFromJson(json);

@override final  ReportPeriodModel period;
@override final  int total_patients;
@override final  int new_patients;
@override final  int active_patients;
@override final  int repeat_patients;
 final  List<Map<String, dynamic>>? _by_gender;
@override List<Map<String, dynamic>>? get by_gender {
  final value = _by_gender;
  if (value == null) return null;
  if (_by_gender is EqualUnmodifiableListView) return _by_gender;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _by_age_group;
@override Map<String, dynamic>? get by_age_group {
  final value = _by_age_group;
  if (value == null) return null;
  if (_by_age_group is EqualUnmodifiableMapView) return _by_age_group;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>>? _patient_list;
@override List<Map<String, dynamic>>? get patient_list {
  final value = _patient_list;
  if (value == null) return null;
  if (_patient_list is EqualUnmodifiableListView) return _patient_list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PatientsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientsReportModelCopyWith<_PatientsReportModel> get copyWith => __$PatientsReportModelCopyWithImpl<_PatientsReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientsReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientsReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.total_patients, total_patients) || other.total_patients == total_patients)&&(identical(other.new_patients, new_patients) || other.new_patients == new_patients)&&(identical(other.active_patients, active_patients) || other.active_patients == active_patients)&&(identical(other.repeat_patients, repeat_patients) || other.repeat_patients == repeat_patients)&&const DeepCollectionEquality().equals(other.by_gender, _by_gender)&&const DeepCollectionEquality().equals(other.by_age_group, _by_age_group)&&const DeepCollectionEquality().equals(other.patient_list, _patient_list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,total_patients,new_patients,active_patients,repeat_patients,const DeepCollectionEquality().hash(_by_gender),const DeepCollectionEquality().hash(_by_age_group),const DeepCollectionEquality().hash(_patient_list));
}

@override
String toString() {
    return 'PatientsReportModel(period: $period, total_patients: $total_patients, new_patients: $new_patients, active_patients: $active_patients, repeat_patients: $repeat_patients, by_gender: $by_gender, by_age_group: $by_age_group, patient_list: $patient_list)';
}


}

/// @nodoc
abstract mixin class _$PatientsReportModelCopyWith<$Res> implements $PatientsReportModelCopyWith<$Res> {
  factory _$PatientsReportModelCopyWith(_PatientsReportModel value, $Res Function(_PatientsReportModel) _then) = __$PatientsReportModelCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriodModel period, int total_patients, int new_patients, int active_patients, int repeat_patients, List<Map<String, dynamic>>? by_gender, Map<String, dynamic>? by_age_group, List<Map<String, dynamic>>? patient_list
});


@override $ReportPeriodModelCopyWith<$Res> get period;

}
/// @nodoc
class __$PatientsReportModelCopyWithImpl<$Res>
    implements _$PatientsReportModelCopyWith<$Res> {
  __$PatientsReportModelCopyWithImpl(this._self, this._then);

  final _PatientsReportModel _self;
  final $Res Function(_PatientsReportModel) _then;

/// Create a copy of PatientsReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? total_patients = null,Object? new_patients = null,Object? active_patients = null,Object? repeat_patients = null,Object? by_gender = freezed,Object? by_age_group = freezed,Object? patient_list = freezed,}) {
  return _then(_PatientsReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriodModel,total_patients: null == total_patients ? _self.total_patients : total_patients // ignore: cast_nullable_to_non_nullable
as int,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,active_patients: null == active_patients ? _self.active_patients : active_patients // ignore: cast_nullable_to_non_nullable
as int,repeat_patients: null == repeat_patients ? _self.repeat_patients : repeat_patients // ignore: cast_nullable_to_non_nullable
as int,by_gender: freezed == by_gender ? _self._by_gender : by_gender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,by_age_group: freezed == by_age_group ? _self._by_age_group : by_age_group // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,patient_list: freezed == patient_list ? _self._patient_list : patient_list // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

/// Create a copy of PatientsReportModel
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
