// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientHistoryModel {

 PatientModel get patient; List<AppointmentModel> get appointments; int get total;
/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientHistoryModelCopyWith<PatientHistoryModel> get copyWith => _$PatientHistoryModelCopyWithImpl<PatientHistoryModel>(this as PatientHistoryModel, _$identity);

  /// Serializes this PatientHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientHistoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientHistoryModel&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&const DeepCollectionEquality().equals(other.appointments, _this.appointments)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientHistoryModel;
  return Object.hash(runtimeType,_this.patient,const DeepCollectionEquality().hash(_this.appointments),_this.total);
}

@override
String toString() {
  final _this = this as PatientHistoryModel;
  return 'PatientHistoryModel(patient: ${_this.patient}, appointments: ${_this.appointments}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $PatientHistoryModelCopyWith<$Res>  {
  factory $PatientHistoryModelCopyWith(PatientHistoryModel value, $Res Function(PatientHistoryModel) _then) = _$PatientHistoryModelCopyWithImpl;
@useResult
$Res call({
 PatientModel patient, List<AppointmentModel> appointments, int total
});


$PatientModelCopyWith<$Res> get patient;

}
/// @nodoc
class _$PatientHistoryModelCopyWithImpl<$Res>
    implements $PatientHistoryModelCopyWith<$Res> {
  _$PatientHistoryModelCopyWithImpl(this._self, this._then);

  final PatientHistoryModel _self;
  final $Res Function(PatientHistoryModel) _then;

/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patient = null,Object? appointments = null,Object? total = null,}) {
  return _then(PatientHistoryModel(
patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientModel,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res> get patient {
  
  return $PatientModelCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientHistoryModel].
extension PatientHistoryModelPatterns on PatientHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatientModel patient,  List<AppointmentModel> appointments,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientHistoryModel() when $default != null:
return $default(_that.patient,_that.appointments,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatientModel patient,  List<AppointmentModel> appointments,  int total)  $default,) {final _that = this;
switch (_that) {
case _PatientHistoryModel():
return $default(_that.patient,_that.appointments,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatientModel patient,  List<AppointmentModel> appointments,  int total)?  $default,) {final _that = this;
switch (_that) {
case _PatientHistoryModel() when $default != null:
return $default(_that.patient,_that.appointments,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientHistoryModel implements PatientHistoryModel {
  const _PatientHistoryModel({required this.patient, required  List<AppointmentModel> appointments, required this.total}): _appointments = appointments;
  factory _PatientHistoryModel.fromJson(Map<String, dynamic> json) => _$PatientHistoryModelFromJson(json);

@override final  PatientModel patient;
 final  List<AppointmentModel> _appointments;
@override List<AppointmentModel> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}

@override final  int total;

/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientHistoryModelCopyWith<_PatientHistoryModel> get copyWith => __$PatientHistoryModelCopyWithImpl<_PatientHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientHistoryModel&&(identical(other.patient, patient) || other.patient == patient)&&const DeepCollectionEquality().equals(other.appointments, _appointments)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,patient,const DeepCollectionEquality().hash(_appointments),total);
}

@override
String toString() {
    return 'PatientHistoryModel(patient: $patient, appointments: $appointments, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PatientHistoryModelCopyWith<$Res> implements $PatientHistoryModelCopyWith<$Res> {
  factory _$PatientHistoryModelCopyWith(_PatientHistoryModel value, $Res Function(_PatientHistoryModel) _then) = __$PatientHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 PatientModel patient, List<AppointmentModel> appointments, int total
});


@override $PatientModelCopyWith<$Res> get patient;

}
/// @nodoc
class __$PatientHistoryModelCopyWithImpl<$Res>
    implements _$PatientHistoryModelCopyWith<$Res> {
  __$PatientHistoryModelCopyWithImpl(this._self, this._then);

  final _PatientHistoryModel _self;
  final $Res Function(_PatientHistoryModel) _then;

/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patient = null,Object? appointments = null,Object? total = null,}) {
  return _then(_PatientHistoryModel(
patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientModel,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PatientHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res> get patient {
  
  return $PatientModelCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}

// dart format on
