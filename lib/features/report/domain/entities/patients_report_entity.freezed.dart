// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patients_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientsReportEntity {

 String? get startDate; String? get endDate; int get days; int get totalPatients; int get newPatients; int get activePatients; int get repeatPatients; List<Map<String, dynamic>> get byGender; Map<String, dynamic> get byAgeGroup; List<Map<String, dynamic>> get patientList;
/// Create a copy of PatientsReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientsReportEntityCopyWith<PatientsReportEntity> get copyWith => _$PatientsReportEntityCopyWithImpl<PatientsReportEntity>(this as PatientsReportEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientsReportEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientsReportEntity&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.totalPatients, _this.totalPatients) || other.totalPatients == _this.totalPatients)&&(identical(other.newPatients, _this.newPatients) || other.newPatients == _this.newPatients)&&(identical(other.activePatients, _this.activePatients) || other.activePatients == _this.activePatients)&&(identical(other.repeatPatients, _this.repeatPatients) || other.repeatPatients == _this.repeatPatients)&&const DeepCollectionEquality().equals(other.byGender, _this.byGender)&&const DeepCollectionEquality().equals(other.byAgeGroup, _this.byAgeGroup)&&const DeepCollectionEquality().equals(other.patientList, _this.patientList));
}


@override
int get hashCode {
  final _this = this as PatientsReportEntity;
  return Object.hash(runtimeType,_this.startDate,_this.endDate,_this.days,_this.totalPatients,_this.newPatients,_this.activePatients,_this.repeatPatients,const DeepCollectionEquality().hash(_this.byGender),const DeepCollectionEquality().hash(_this.byAgeGroup),const DeepCollectionEquality().hash(_this.patientList));
}

@override
String toString() {
  final _this = this as PatientsReportEntity;
  return 'PatientsReportEntity(startDate: ${_this.startDate}, endDate: ${_this.endDate}, days: ${_this.days}, totalPatients: ${_this.totalPatients}, newPatients: ${_this.newPatients}, activePatients: ${_this.activePatients}, repeatPatients: ${_this.repeatPatients}, byGender: ${_this.byGender}, byAgeGroup: ${_this.byAgeGroup}, patientList: ${_this.patientList})';
}


}

/// @nodoc
abstract mixin class $PatientsReportEntityCopyWith<$Res>  {
  factory $PatientsReportEntityCopyWith(PatientsReportEntity value, $Res Function(PatientsReportEntity) _then) = _$PatientsReportEntityCopyWithImpl;
@useResult
$Res call({
 String? startDate, String? endDate, int days, int totalPatients, int newPatients, int activePatients, int repeatPatients, List<Map<String, dynamic>> byGender, Map<String, dynamic> byAgeGroup, List<Map<String, dynamic>> patientList
});




}
/// @nodoc
class _$PatientsReportEntityCopyWithImpl<$Res>
    implements $PatientsReportEntityCopyWith<$Res> {
  _$PatientsReportEntityCopyWithImpl(this._self, this._then);

  final PatientsReportEntity _self;
  final $Res Function(PatientsReportEntity) _then;

/// Create a copy of PatientsReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalPatients = null,Object? newPatients = null,Object? activePatients = null,Object? repeatPatients = null,Object? byGender = null,Object? byAgeGroup = null,Object? patientList = null,}) {
  return _then(PatientsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,newPatients: null == newPatients ? _self.newPatients : newPatients // ignore: cast_nullable_to_non_nullable
as int,activePatients: null == activePatients ? _self.activePatients : activePatients // ignore: cast_nullable_to_non_nullable
as int,repeatPatients: null == repeatPatients ? _self.repeatPatients : repeatPatients // ignore: cast_nullable_to_non_nullable
as int,byGender: null == byGender ? _self.byGender : byGender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byAgeGroup: null == byAgeGroup ? _self.byAgeGroup : byAgeGroup // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,patientList: null == patientList ? _self.patientList : patientList // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientsReportEntity].
extension PatientsReportEntityPatterns on PatientsReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientsReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientsReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientsReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientsReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientsReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientsReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalPatients,  int newPatients,  int activePatients,  int repeatPatients,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  List<Map<String, dynamic>> patientList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalPatients,_that.newPatients,_that.activePatients,_that.repeatPatients,_that.byGender,_that.byAgeGroup,_that.patientList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? startDate,  String? endDate,  int days,  int totalPatients,  int newPatients,  int activePatients,  int repeatPatients,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  List<Map<String, dynamic>> patientList)  $default,) {final _that = this;
switch (_that) {
case _PatientsReportEntity():
return $default(_that.startDate,_that.endDate,_that.days,_that.totalPatients,_that.newPatients,_that.activePatients,_that.repeatPatients,_that.byGender,_that.byAgeGroup,_that.patientList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? startDate,  String? endDate,  int days,  int totalPatients,  int newPatients,  int activePatients,  int repeatPatients,  List<Map<String, dynamic>> byGender,  Map<String, dynamic> byAgeGroup,  List<Map<String, dynamic>> patientList)?  $default,) {final _that = this;
switch (_that) {
case _PatientsReportEntity() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days,_that.totalPatients,_that.newPatients,_that.activePatients,_that.repeatPatients,_that.byGender,_that.byAgeGroup,_that.patientList);case _:
  return null;

}
}

}

/// @nodoc


class _PatientsReportEntity implements PatientsReportEntity {
  const _PatientsReportEntity({required this.startDate, required this.endDate, required this.days, required this.totalPatients, required this.newPatients, required this.activePatients, required this.repeatPatients, required  List<Map<String, dynamic>> byGender, required  Map<String, dynamic> byAgeGroup, required  List<Map<String, dynamic>> patientList}): _byGender = byGender,_byAgeGroup = byAgeGroup,_patientList = patientList;
  

@override final  String? startDate;
@override final  String? endDate;
@override final  int days;
@override final  int totalPatients;
@override final  int newPatients;
@override final  int activePatients;
@override final  int repeatPatients;
 final  List<Map<String, dynamic>> _byGender;
@override List<Map<String, dynamic>> get byGender {
  if (_byGender is EqualUnmodifiableListView) return _byGender;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byGender);
}

 final  Map<String, dynamic> _byAgeGroup;
@override Map<String, dynamic> get byAgeGroup {
  if (_byAgeGroup is EqualUnmodifiableMapView) return _byAgeGroup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byAgeGroup);
}

 final  List<Map<String, dynamic>> _patientList;
@override List<Map<String, dynamic>> get patientList {
  if (_patientList is EqualUnmodifiableListView) return _patientList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_patientList);
}


/// Create a copy of PatientsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientsReportEntityCopyWith<_PatientsReportEntity> get copyWith => __$PatientsReportEntityCopyWithImpl<_PatientsReportEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientsReportEntity&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.newPatients, newPatients) || other.newPatients == newPatients)&&(identical(other.activePatients, activePatients) || other.activePatients == activePatients)&&(identical(other.repeatPatients, repeatPatients) || other.repeatPatients == repeatPatients)&&const DeepCollectionEquality().equals(other.byGender, _byGender)&&const DeepCollectionEquality().equals(other.byAgeGroup, _byAgeGroup)&&const DeepCollectionEquality().equals(other.patientList, _patientList));
}


@override
int get hashCode {
    return Object.hash(runtimeType,startDate,endDate,days,totalPatients,newPatients,activePatients,repeatPatients,const DeepCollectionEquality().hash(_byGender),const DeepCollectionEquality().hash(_byAgeGroup),const DeepCollectionEquality().hash(_patientList));
}

@override
String toString() {
    return 'PatientsReportEntity(startDate: $startDate, endDate: $endDate, days: $days, totalPatients: $totalPatients, newPatients: $newPatients, activePatients: $activePatients, repeatPatients: $repeatPatients, byGender: $byGender, byAgeGroup: $byAgeGroup, patientList: $patientList)';
}


}

/// @nodoc
abstract mixin class _$PatientsReportEntityCopyWith<$Res> implements $PatientsReportEntityCopyWith<$Res> {
  factory _$PatientsReportEntityCopyWith(_PatientsReportEntity value, $Res Function(_PatientsReportEntity) _then) = __$PatientsReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String? startDate, String? endDate, int days, int totalPatients, int newPatients, int activePatients, int repeatPatients, List<Map<String, dynamic>> byGender, Map<String, dynamic> byAgeGroup, List<Map<String, dynamic>> patientList
});




}
/// @nodoc
class __$PatientsReportEntityCopyWithImpl<$Res>
    implements _$PatientsReportEntityCopyWith<$Res> {
  __$PatientsReportEntityCopyWithImpl(this._self, this._then);

  final _PatientsReportEntity _self;
  final $Res Function(_PatientsReportEntity) _then;

/// Create a copy of PatientsReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? totalPatients = null,Object? newPatients = null,Object? activePatients = null,Object? repeatPatients = null,Object? byGender = null,Object? byAgeGroup = null,Object? patientList = null,}) {
  return _then(_PatientsReportEntity(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,newPatients: null == newPatients ? _self.newPatients : newPatients // ignore: cast_nullable_to_non_nullable
as int,activePatients: null == activePatients ? _self.activePatients : activePatients // ignore: cast_nullable_to_non_nullable
as int,repeatPatients: null == repeatPatients ? _self.repeatPatients : repeatPatients // ignore: cast_nullable_to_non_nullable
as int,byGender: null == byGender ? _self._byGender : byGender // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,byAgeGroup: null == byAgeGroup ? _self._byAgeGroup : byAgeGroup // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,patientList: null == patientList ? _self._patientList : patientList // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

// dart format on
