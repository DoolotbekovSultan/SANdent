// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientHistoryEntity {

 PatientEntity get patient; List<AppointmentEntity> get appointments; int get total;
/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientHistoryEntityCopyWith<PatientHistoryEntity> get copyWith => _$PatientHistoryEntityCopyWithImpl<PatientHistoryEntity>(this as PatientHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientHistoryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientHistoryEntity&&(identical(other.patient, _this.patient) || other.patient == _this.patient)&&const DeepCollectionEquality().equals(other.appointments, _this.appointments)&&(identical(other.total, _this.total) || other.total == _this.total));
}


@override
int get hashCode {
  final _this = this as PatientHistoryEntity;
  return Object.hash(runtimeType,_this.patient,const DeepCollectionEquality().hash(_this.appointments),_this.total);
}

@override
String toString() {
  final _this = this as PatientHistoryEntity;
  return 'PatientHistoryEntity(patient: ${_this.patient}, appointments: ${_this.appointments}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $PatientHistoryEntityCopyWith<$Res>  {
  factory $PatientHistoryEntityCopyWith(PatientHistoryEntity value, $Res Function(PatientHistoryEntity) _then) = _$PatientHistoryEntityCopyWithImpl;
@useResult
$Res call({
 PatientEntity patient, List<AppointmentEntity> appointments, int total
});


$PatientEntityCopyWith<$Res> get patient;

}
/// @nodoc
class _$PatientHistoryEntityCopyWithImpl<$Res>
    implements $PatientHistoryEntityCopyWith<$Res> {
  _$PatientHistoryEntityCopyWithImpl(this._self, this._then);

  final PatientHistoryEntity _self;
  final $Res Function(PatientHistoryEntity) _then;

/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patient = null,Object? appointments = null,Object? total = null,}) {
  return _then(PatientHistoryEntity(
patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientEntity,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientEntityCopyWith<$Res> get patient {
  
  return $PatientEntityCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientHistoryEntity].
extension PatientHistoryEntityPatterns on PatientHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatientEntity patient,  List<AppointmentEntity> appointments,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatientEntity patient,  List<AppointmentEntity> appointments,  int total)  $default,) {final _that = this;
switch (_that) {
case _PatientHistoryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatientEntity patient,  List<AppointmentEntity> appointments,  int total)?  $default,) {final _that = this;
switch (_that) {
case _PatientHistoryEntity() when $default != null:
return $default(_that.patient,_that.appointments,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _PatientHistoryEntity implements PatientHistoryEntity {
  const _PatientHistoryEntity({required this.patient, required  List<AppointmentEntity> appointments, required this.total}): _appointments = appointments;
  

@override final  PatientEntity patient;
 final  List<AppointmentEntity> _appointments;
@override List<AppointmentEntity> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}

@override final  int total;

/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientHistoryEntityCopyWith<_PatientHistoryEntity> get copyWith => __$PatientHistoryEntityCopyWithImpl<_PatientHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientHistoryEntity&&(identical(other.patient, patient) || other.patient == patient)&&const DeepCollectionEquality().equals(other.appointments, _appointments)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode {
    return Object.hash(runtimeType,patient,const DeepCollectionEquality().hash(_appointments),total);
}

@override
String toString() {
    return 'PatientHistoryEntity(patient: $patient, appointments: $appointments, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PatientHistoryEntityCopyWith<$Res> implements $PatientHistoryEntityCopyWith<$Res> {
  factory _$PatientHistoryEntityCopyWith(_PatientHistoryEntity value, $Res Function(_PatientHistoryEntity) _then) = __$PatientHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 PatientEntity patient, List<AppointmentEntity> appointments, int total
});


@override $PatientEntityCopyWith<$Res> get patient;

}
/// @nodoc
class __$PatientHistoryEntityCopyWithImpl<$Res>
    implements _$PatientHistoryEntityCopyWith<$Res> {
  __$PatientHistoryEntityCopyWithImpl(this._self, this._then);

  final _PatientHistoryEntity _self;
  final $Res Function(_PatientHistoryEntity) _then;

/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patient = null,Object? appointments = null,Object? total = null,}) {
  return _then(_PatientHistoryEntity(
patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientEntity,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentEntity>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PatientHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientEntityCopyWith<$Res> get patient {
  
  return $PatientEntityCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}

// dart format on
