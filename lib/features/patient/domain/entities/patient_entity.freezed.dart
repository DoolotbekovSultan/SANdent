// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientEntity {

 int get id; String get firstName; String get lastName; String? get middleName; String get fullName; String? get shortName; String get dateOfBirth; int? get age; String? get ageGroup; String get gender; String get phone; String? get email; String? get address; String? get inn; String? get snils; String? get policyNumber; String? get allergies; String? get chronicDiseases; String? get notes; int? get totalAppointments; int? get completedAppointments; int? get cancelledAppointments; String? get lastAppointment; List<Map<String, dynamic>>? get documents; String? get createdAt; String? get updatedAt;
/// Create a copy of PatientEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientEntityCopyWith<PatientEntity> get copyWith => _$PatientEntityCopyWithImpl<PatientEntity>(this as PatientEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatientEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.shortName, _this.shortName) || other.shortName == _this.shortName)&&(identical(other.dateOfBirth, _this.dateOfBirth) || other.dateOfBirth == _this.dateOfBirth)&&(identical(other.age, _this.age) || other.age == _this.age)&&(identical(other.ageGroup, _this.ageGroup) || other.ageGroup == _this.ageGroup)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.inn, _this.inn) || other.inn == _this.inn)&&(identical(other.snils, _this.snils) || other.snils == _this.snils)&&(identical(other.policyNumber, _this.policyNumber) || other.policyNumber == _this.policyNumber)&&(identical(other.allergies, _this.allergies) || other.allergies == _this.allergies)&&(identical(other.chronicDiseases, _this.chronicDiseases) || other.chronicDiseases == _this.chronicDiseases)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.totalAppointments, _this.totalAppointments) || other.totalAppointments == _this.totalAppointments)&&(identical(other.completedAppointments, _this.completedAppointments) || other.completedAppointments == _this.completedAppointments)&&(identical(other.cancelledAppointments, _this.cancelledAppointments) || other.cancelledAppointments == _this.cancelledAppointments)&&(identical(other.lastAppointment, _this.lastAppointment) || other.lastAppointment == _this.lastAppointment)&&const DeepCollectionEquality().equals(other.documents, _this.documents)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as PatientEntity;
  return Object.hashAll([runtimeType,_this.id,_this.firstName,_this.lastName,_this.middleName,_this.fullName,_this.shortName,_this.dateOfBirth,_this.age,_this.ageGroup,_this.gender,_this.phone,_this.email,_this.address,_this.inn,_this.snils,_this.policyNumber,_this.allergies,_this.chronicDiseases,_this.notes,_this.totalAppointments,_this.completedAppointments,_this.cancelledAppointments,_this.lastAppointment,const DeepCollectionEquality().hash(_this.documents),_this.createdAt,_this.updatedAt]);
}

@override
String toString() {
  final _this = this as PatientEntity;
  return 'PatientEntity(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, middleName: ${_this.middleName}, fullName: ${_this.fullName}, shortName: ${_this.shortName}, dateOfBirth: ${_this.dateOfBirth}, age: ${_this.age}, ageGroup: ${_this.ageGroup}, gender: ${_this.gender}, phone: ${_this.phone}, email: ${_this.email}, address: ${_this.address}, inn: ${_this.inn}, snils: ${_this.snils}, policyNumber: ${_this.policyNumber}, allergies: ${_this.allergies}, chronicDiseases: ${_this.chronicDiseases}, notes: ${_this.notes}, totalAppointments: ${_this.totalAppointments}, completedAppointments: ${_this.completedAppointments}, cancelledAppointments: ${_this.cancelledAppointments}, lastAppointment: ${_this.lastAppointment}, documents: ${_this.documents}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $PatientEntityCopyWith<$Res>  {
  factory $PatientEntityCopyWith(PatientEntity value, $Res Function(PatientEntity) _then) = _$PatientEntityCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, String? middleName, String fullName, String? shortName, String dateOfBirth, int? age, String? ageGroup, String gender, String phone, String? email, String? address, String? inn, String? snils, String? policyNumber, String? allergies, String? chronicDiseases, String? notes, int? totalAppointments, int? completedAppointments, int? cancelledAppointments, String? lastAppointment, List<Map<String, dynamic>>? documents, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$PatientEntityCopyWithImpl<$Res>
    implements $PatientEntityCopyWith<$Res> {
  _$PatientEntityCopyWithImpl(this._self, this._then);

  final PatientEntity _self;
  final $Res Function(PatientEntity) _then;

/// Create a copy of PatientEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? middleName = freezed,Object? fullName = null,Object? shortName = freezed,Object? dateOfBirth = null,Object? age = freezed,Object? ageGroup = freezed,Object? gender = null,Object? phone = null,Object? email = freezed,Object? address = freezed,Object? inn = freezed,Object? snils = freezed,Object? policyNumber = freezed,Object? allergies = freezed,Object? chronicDiseases = freezed,Object? notes = freezed,Object? totalAppointments = freezed,Object? completedAppointments = freezed,Object? cancelledAppointments = freezed,Object? lastAppointment = freezed,Object? documents = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(PatientEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,ageGroup: freezed == ageGroup ? _self.ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,inn: freezed == inn ? _self.inn : inn // ignore: cast_nullable_to_non_nullable
as String?,snils: freezed == snils ? _self.snils : snils // ignore: cast_nullable_to_non_nullable
as String?,policyNumber: freezed == policyNumber ? _self.policyNumber : policyNumber // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,chronicDiseases: freezed == chronicDiseases ? _self.chronicDiseases : chronicDiseases // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,totalAppointments: freezed == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int?,completedAppointments: freezed == completedAppointments ? _self.completedAppointments : completedAppointments // ignore: cast_nullable_to_non_nullable
as int?,cancelledAppointments: freezed == cancelledAppointments ? _self.cancelledAppointments : cancelledAppointments // ignore: cast_nullable_to_non_nullable
as int?,lastAppointment: freezed == lastAppointment ? _self.lastAppointment : lastAppointment // ignore: cast_nullable_to_non_nullable
as String?,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientEntity].
extension PatientEntityPatterns on PatientEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String? middleName,  String fullName,  String? shortName,  String dateOfBirth,  int? age,  String? ageGroup,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policyNumber,  String? allergies,  String? chronicDiseases,  String? notes,  int? totalAppointments,  int? completedAppointments,  int? cancelledAppointments,  String? lastAppointment,  List<Map<String, dynamic>>? documents,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientEntity() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.middleName,_that.fullName,_that.shortName,_that.dateOfBirth,_that.age,_that.ageGroup,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policyNumber,_that.allergies,_that.chronicDiseases,_that.notes,_that.totalAppointments,_that.completedAppointments,_that.cancelledAppointments,_that.lastAppointment,_that.documents,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String? middleName,  String fullName,  String? shortName,  String dateOfBirth,  int? age,  String? ageGroup,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policyNumber,  String? allergies,  String? chronicDiseases,  String? notes,  int? totalAppointments,  int? completedAppointments,  int? cancelledAppointments,  String? lastAppointment,  List<Map<String, dynamic>>? documents,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatientEntity():
return $default(_that.id,_that.firstName,_that.lastName,_that.middleName,_that.fullName,_that.shortName,_that.dateOfBirth,_that.age,_that.ageGroup,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policyNumber,_that.allergies,_that.chronicDiseases,_that.notes,_that.totalAppointments,_that.completedAppointments,_that.cancelledAppointments,_that.lastAppointment,_that.documents,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  String? middleName,  String fullName,  String? shortName,  String dateOfBirth,  int? age,  String? ageGroup,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policyNumber,  String? allergies,  String? chronicDiseases,  String? notes,  int? totalAppointments,  int? completedAppointments,  int? cancelledAppointments,  String? lastAppointment,  List<Map<String, dynamic>>? documents,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatientEntity() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.middleName,_that.fullName,_that.shortName,_that.dateOfBirth,_that.age,_that.ageGroup,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policyNumber,_that.allergies,_that.chronicDiseases,_that.notes,_that.totalAppointments,_that.completedAppointments,_that.cancelledAppointments,_that.lastAppointment,_that.documents,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PatientEntity implements PatientEntity {
  const _PatientEntity({required this.id, required this.firstName, required this.lastName, required this.middleName, required this.fullName, required this.shortName, required this.dateOfBirth, required this.age, required this.ageGroup, required this.gender, required this.phone, required this.email, required this.address, required this.inn, required this.snils, required this.policyNumber, required this.allergies, required this.chronicDiseases, required this.notes, required this.totalAppointments, required this.completedAppointments, required this.cancelledAppointments, required this.lastAppointment, required  List<Map<String, dynamic>>? documents, required this.createdAt, required this.updatedAt}): _documents = documents;
  

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  String? middleName;
@override final  String fullName;
@override final  String? shortName;
@override final  String dateOfBirth;
@override final  int? age;
@override final  String? ageGroup;
@override final  String gender;
@override final  String phone;
@override final  String? email;
@override final  String? address;
@override final  String? inn;
@override final  String? snils;
@override final  String? policyNumber;
@override final  String? allergies;
@override final  String? chronicDiseases;
@override final  String? notes;
@override final  int? totalAppointments;
@override final  int? completedAppointments;
@override final  int? cancelledAppointments;
@override final  String? lastAppointment;
 final  List<Map<String, dynamic>>? _documents;
@override List<Map<String, dynamic>>? get documents {
  final value = _documents;
  if (value == null) return null;
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of PatientEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientEntityCopyWith<_PatientEntity> get copyWith => __$PatientEntityCopyWithImpl<_PatientEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.age, age) || other.age == age)&&(identical(other.ageGroup, ageGroup) || other.ageGroup == ageGroup)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.inn, inn) || other.inn == inn)&&(identical(other.snils, snils) || other.snils == snils)&&(identical(other.policyNumber, policyNumber) || other.policyNumber == policyNumber)&&(identical(other.allergies, allergies) || other.allergies == allergies)&&(identical(other.chronicDiseases, chronicDiseases) || other.chronicDiseases == chronicDiseases)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.totalAppointments, totalAppointments) || other.totalAppointments == totalAppointments)&&(identical(other.completedAppointments, completedAppointments) || other.completedAppointments == completedAppointments)&&(identical(other.cancelledAppointments, cancelledAppointments) || other.cancelledAppointments == cancelledAppointments)&&(identical(other.lastAppointment, lastAppointment) || other.lastAppointment == lastAppointment)&&const DeepCollectionEquality().equals(other.documents, _documents)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,firstName,lastName,middleName,fullName,shortName,dateOfBirth,age,ageGroup,gender,phone,email,address,inn,snils,policyNumber,allergies,chronicDiseases,notes,totalAppointments,completedAppointments,cancelledAppointments,lastAppointment,const DeepCollectionEquality().hash(_documents),createdAt,updatedAt]);
}

@override
String toString() {
    return 'PatientEntity(id: $id, firstName: $firstName, lastName: $lastName, middleName: $middleName, fullName: $fullName, shortName: $shortName, dateOfBirth: $dateOfBirth, age: $age, ageGroup: $ageGroup, gender: $gender, phone: $phone, email: $email, address: $address, inn: $inn, snils: $snils, policyNumber: $policyNumber, allergies: $allergies, chronicDiseases: $chronicDiseases, notes: $notes, totalAppointments: $totalAppointments, completedAppointments: $completedAppointments, cancelledAppointments: $cancelledAppointments, lastAppointment: $lastAppointment, documents: $documents, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientEntityCopyWith<$Res> implements $PatientEntityCopyWith<$Res> {
  factory _$PatientEntityCopyWith(_PatientEntity value, $Res Function(_PatientEntity) _then) = __$PatientEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, String? middleName, String fullName, String? shortName, String dateOfBirth, int? age, String? ageGroup, String gender, String phone, String? email, String? address, String? inn, String? snils, String? policyNumber, String? allergies, String? chronicDiseases, String? notes, int? totalAppointments, int? completedAppointments, int? cancelledAppointments, String? lastAppointment, List<Map<String, dynamic>>? documents, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$PatientEntityCopyWithImpl<$Res>
    implements _$PatientEntityCopyWith<$Res> {
  __$PatientEntityCopyWithImpl(this._self, this._then);

  final _PatientEntity _self;
  final $Res Function(_PatientEntity) _then;

/// Create a copy of PatientEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? middleName = freezed,Object? fullName = null,Object? shortName = freezed,Object? dateOfBirth = null,Object? age = freezed,Object? ageGroup = freezed,Object? gender = null,Object? phone = null,Object? email = freezed,Object? address = freezed,Object? inn = freezed,Object? snils = freezed,Object? policyNumber = freezed,Object? allergies = freezed,Object? chronicDiseases = freezed,Object? notes = freezed,Object? totalAppointments = freezed,Object? completedAppointments = freezed,Object? cancelledAppointments = freezed,Object? lastAppointment = freezed,Object? documents = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PatientEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,ageGroup: freezed == ageGroup ? _self.ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,inn: freezed == inn ? _self.inn : inn // ignore: cast_nullable_to_non_nullable
as String?,snils: freezed == snils ? _self.snils : snils // ignore: cast_nullable_to_non_nullable
as String?,policyNumber: freezed == policyNumber ? _self.policyNumber : policyNumber // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,chronicDiseases: freezed == chronicDiseases ? _self.chronicDiseases : chronicDiseases // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,totalAppointments: freezed == totalAppointments ? _self.totalAppointments : totalAppointments // ignore: cast_nullable_to_non_nullable
as int?,completedAppointments: freezed == completedAppointments ? _self.completedAppointments : completedAppointments // ignore: cast_nullable_to_non_nullable
as int?,cancelledAppointments: freezed == cancelledAppointments ? _self.cancelledAppointments : cancelledAppointments // ignore: cast_nullable_to_non_nullable
as int?,lastAppointment: freezed == lastAppointment ? _self.lastAppointment : lastAppointment // ignore: cast_nullable_to_non_nullable
as String?,documents: freezed == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
