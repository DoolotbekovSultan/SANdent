// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientModel {

 int get id; String get first_name; String get last_name; String? get middle_name; String get full_name; String? get short_name; String get date_of_birth; int? get age; String? get age_group; String get gender; String get phone; String? get email; String? get address; String? get inn; String? get snils; String? get policy_number; String? get allergies; String? get chronic_diseases; String? get notes; int? get total_appointments; int? get completed_appointments; int? get cancelled_appointments; String? get last_appointment; List<Map<String, dynamic>>? get documents; String? get created_at; String? get updated_at;
/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientModelCopyWith<PatientModel> get copyWith => _$PatientModelCopyWithImpl<PatientModel>(this as PatientModel, _$identity);

  /// Serializes this PatientModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PatientModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.first_name, _this.first_name) || other.first_name == _this.first_name)&&(identical(other.last_name, _this.last_name) || other.last_name == _this.last_name)&&(identical(other.middle_name, _this.middle_name) || other.middle_name == _this.middle_name)&&(identical(other.full_name, _this.full_name) || other.full_name == _this.full_name)&&(identical(other.short_name, _this.short_name) || other.short_name == _this.short_name)&&(identical(other.date_of_birth, _this.date_of_birth) || other.date_of_birth == _this.date_of_birth)&&(identical(other.age, _this.age) || other.age == _this.age)&&(identical(other.age_group, _this.age_group) || other.age_group == _this.age_group)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.inn, _this.inn) || other.inn == _this.inn)&&(identical(other.snils, _this.snils) || other.snils == _this.snils)&&(identical(other.policy_number, _this.policy_number) || other.policy_number == _this.policy_number)&&(identical(other.allergies, _this.allergies) || other.allergies == _this.allergies)&&(identical(other.chronic_diseases, _this.chronic_diseases) || other.chronic_diseases == _this.chronic_diseases)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.total_appointments, _this.total_appointments) || other.total_appointments == _this.total_appointments)&&(identical(other.completed_appointments, _this.completed_appointments) || other.completed_appointments == _this.completed_appointments)&&(identical(other.cancelled_appointments, _this.cancelled_appointments) || other.cancelled_appointments == _this.cancelled_appointments)&&(identical(other.last_appointment, _this.last_appointment) || other.last_appointment == _this.last_appointment)&&const DeepCollectionEquality().equals(other.documents, _this.documents)&&(identical(other.created_at, _this.created_at) || other.created_at == _this.created_at)&&(identical(other.updated_at, _this.updated_at) || other.updated_at == _this.updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PatientModel;
  return Object.hashAll([runtimeType,_this.id,_this.first_name,_this.last_name,_this.middle_name,_this.full_name,_this.short_name,_this.date_of_birth,_this.age,_this.age_group,_this.gender,_this.phone,_this.email,_this.address,_this.inn,_this.snils,_this.policy_number,_this.allergies,_this.chronic_diseases,_this.notes,_this.total_appointments,_this.completed_appointments,_this.cancelled_appointments,_this.last_appointment,const DeepCollectionEquality().hash(_this.documents),_this.created_at,_this.updated_at]);
}

@override
String toString() {
  final _this = this as PatientModel;
  return 'PatientModel(id: ${_this.id}, first_name: ${_this.first_name}, last_name: ${_this.last_name}, middle_name: ${_this.middle_name}, full_name: ${_this.full_name}, short_name: ${_this.short_name}, date_of_birth: ${_this.date_of_birth}, age: ${_this.age}, age_group: ${_this.age_group}, gender: ${_this.gender}, phone: ${_this.phone}, email: ${_this.email}, address: ${_this.address}, inn: ${_this.inn}, snils: ${_this.snils}, policy_number: ${_this.policy_number}, allergies: ${_this.allergies}, chronic_diseases: ${_this.chronic_diseases}, notes: ${_this.notes}, total_appointments: ${_this.total_appointments}, completed_appointments: ${_this.completed_appointments}, cancelled_appointments: ${_this.cancelled_appointments}, last_appointment: ${_this.last_appointment}, documents: ${_this.documents}, created_at: ${_this.created_at}, updated_at: ${_this.updated_at})';
}


}

/// @nodoc
abstract mixin class $PatientModelCopyWith<$Res>  {
  factory $PatientModelCopyWith(PatientModel value, $Res Function(PatientModel) _then) = _$PatientModelCopyWithImpl;
@useResult
$Res call({
 int id, String first_name, String last_name, String? middle_name, String full_name, String? short_name, String date_of_birth, int? age, String? age_group, String gender, String phone, String? email, String? address, String? inn, String? snils, String? policy_number, String? allergies, String? chronic_diseases, String? notes, int? total_appointments, int? completed_appointments, int? cancelled_appointments, String? last_appointment, List<Map<String, dynamic>>? documents, String? created_at, String? updated_at
});




}
/// @nodoc
class _$PatientModelCopyWithImpl<$Res>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._self, this._then);

  final PatientModel _self;
  final $Res Function(PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? first_name = null,Object? last_name = null,Object? middle_name = freezed,Object? full_name = null,Object? short_name = freezed,Object? date_of_birth = null,Object? age = freezed,Object? age_group = freezed,Object? gender = null,Object? phone = null,Object? email = freezed,Object? address = freezed,Object? inn = freezed,Object? snils = freezed,Object? policy_number = freezed,Object? allergies = freezed,Object? chronic_diseases = freezed,Object? notes = freezed,Object? total_appointments = freezed,Object? completed_appointments = freezed,Object? cancelled_appointments = freezed,Object? last_appointment = freezed,Object? documents = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(PatientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,first_name: null == first_name ? _self.first_name : first_name // ignore: cast_nullable_to_non_nullable
as String,last_name: null == last_name ? _self.last_name : last_name // ignore: cast_nullable_to_non_nullable
as String,middle_name: freezed == middle_name ? _self.middle_name : middle_name // ignore: cast_nullable_to_non_nullable
as String?,full_name: null == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,date_of_birth: null == date_of_birth ? _self.date_of_birth : date_of_birth // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,age_group: freezed == age_group ? _self.age_group : age_group // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,inn: freezed == inn ? _self.inn : inn // ignore: cast_nullable_to_non_nullable
as String?,snils: freezed == snils ? _self.snils : snils // ignore: cast_nullable_to_non_nullable
as String?,policy_number: freezed == policy_number ? _self.policy_number : policy_number // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,chronic_diseases: freezed == chronic_diseases ? _self.chronic_diseases : chronic_diseases // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,total_appointments: freezed == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int?,completed_appointments: freezed == completed_appointments ? _self.completed_appointments : completed_appointments // ignore: cast_nullable_to_non_nullable
as int?,cancelled_appointments: freezed == cancelled_appointments ? _self.cancelled_appointments : cancelled_appointments // ignore: cast_nullable_to_non_nullable
as int?,last_appointment: freezed == last_appointment ? _self.last_appointment : last_appointment // ignore: cast_nullable_to_non_nullable
as String?,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientModel].
extension PatientModelPatterns on PatientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String first_name,  String last_name,  String? middle_name,  String full_name,  String? short_name,  String date_of_birth,  int? age,  String? age_group,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policy_number,  String? allergies,  String? chronic_diseases,  String? notes,  int? total_appointments,  int? completed_appointments,  int? cancelled_appointments,  String? last_appointment,  List<Map<String, dynamic>>? documents,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.first_name,_that.last_name,_that.middle_name,_that.full_name,_that.short_name,_that.date_of_birth,_that.age,_that.age_group,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policy_number,_that.allergies,_that.chronic_diseases,_that.notes,_that.total_appointments,_that.completed_appointments,_that.cancelled_appointments,_that.last_appointment,_that.documents,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String first_name,  String last_name,  String? middle_name,  String full_name,  String? short_name,  String date_of_birth,  int? age,  String? age_group,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policy_number,  String? allergies,  String? chronic_diseases,  String? notes,  int? total_appointments,  int? completed_appointments,  int? cancelled_appointments,  String? last_appointment,  List<Map<String, dynamic>>? documents,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _PatientModel():
return $default(_that.id,_that.first_name,_that.last_name,_that.middle_name,_that.full_name,_that.short_name,_that.date_of_birth,_that.age,_that.age_group,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policy_number,_that.allergies,_that.chronic_diseases,_that.notes,_that.total_appointments,_that.completed_appointments,_that.cancelled_appointments,_that.last_appointment,_that.documents,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String first_name,  String last_name,  String? middle_name,  String full_name,  String? short_name,  String date_of_birth,  int? age,  String? age_group,  String gender,  String phone,  String? email,  String? address,  String? inn,  String? snils,  String? policy_number,  String? allergies,  String? chronic_diseases,  String? notes,  int? total_appointments,  int? completed_appointments,  int? cancelled_appointments,  String? last_appointment,  List<Map<String, dynamic>>? documents,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.first_name,_that.last_name,_that.middle_name,_that.full_name,_that.short_name,_that.date_of_birth,_that.age,_that.age_group,_that.gender,_that.phone,_that.email,_that.address,_that.inn,_that.snils,_that.policy_number,_that.allergies,_that.chronic_diseases,_that.notes,_that.total_appointments,_that.completed_appointments,_that.cancelled_appointments,_that.last_appointment,_that.documents,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientModel implements PatientModel {
  const _PatientModel({required this.id, required this.first_name, required this.last_name, required this.middle_name, required this.full_name, required this.short_name, required this.date_of_birth, required this.age, required this.age_group, required this.gender, required this.phone, required this.email, required this.address, required this.inn, required this.snils, required this.policy_number, required this.allergies, required this.chronic_diseases, required this.notes, required this.total_appointments, required this.completed_appointments, required this.cancelled_appointments, required this.last_appointment, required  List<Map<String, dynamic>>? documents, required this.created_at, required this.updated_at}): _documents = documents;
  factory _PatientModel.fromJson(Map<String, dynamic> json) => _$PatientModelFromJson(json);

@override final  int id;
@override final  String first_name;
@override final  String last_name;
@override final  String? middle_name;
@override final  String full_name;
@override final  String? short_name;
@override final  String date_of_birth;
@override final  int? age;
@override final  String? age_group;
@override final  String gender;
@override final  String phone;
@override final  String? email;
@override final  String? address;
@override final  String? inn;
@override final  String? snils;
@override final  String? policy_number;
@override final  String? allergies;
@override final  String? chronic_diseases;
@override final  String? notes;
@override final  int? total_appointments;
@override final  int? completed_appointments;
@override final  int? cancelled_appointments;
@override final  String? last_appointment;
 final  List<Map<String, dynamic>>? _documents;
@override List<Map<String, dynamic>>? get documents {
  final value = _documents;
  if (value == null) return null;
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientModelCopyWith<_PatientModel> get copyWith => __$PatientModelCopyWithImpl<_PatientModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.first_name, first_name) || other.first_name == first_name)&&(identical(other.last_name, last_name) || other.last_name == last_name)&&(identical(other.middle_name, middle_name) || other.middle_name == middle_name)&&(identical(other.full_name, full_name) || other.full_name == full_name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.date_of_birth, date_of_birth) || other.date_of_birth == date_of_birth)&&(identical(other.age, age) || other.age == age)&&(identical(other.age_group, age_group) || other.age_group == age_group)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.inn, inn) || other.inn == inn)&&(identical(other.snils, snils) || other.snils == snils)&&(identical(other.policy_number, policy_number) || other.policy_number == policy_number)&&(identical(other.allergies, allergies) || other.allergies == allergies)&&(identical(other.chronic_diseases, chronic_diseases) || other.chronic_diseases == chronic_diseases)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.total_appointments, total_appointments) || other.total_appointments == total_appointments)&&(identical(other.completed_appointments, completed_appointments) || other.completed_appointments == completed_appointments)&&(identical(other.cancelled_appointments, cancelled_appointments) || other.cancelled_appointments == cancelled_appointments)&&(identical(other.last_appointment, last_appointment) || other.last_appointment == last_appointment)&&const DeepCollectionEquality().equals(other.documents, _documents)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,first_name,last_name,middle_name,full_name,short_name,date_of_birth,age,age_group,gender,phone,email,address,inn,snils,policy_number,allergies,chronic_diseases,notes,total_appointments,completed_appointments,cancelled_appointments,last_appointment,const DeepCollectionEquality().hash(_documents),created_at,updated_at]);
}

@override
String toString() {
    return 'PatientModel(id: $id, first_name: $first_name, last_name: $last_name, middle_name: $middle_name, full_name: $full_name, short_name: $short_name, date_of_birth: $date_of_birth, age: $age, age_group: $age_group, gender: $gender, phone: $phone, email: $email, address: $address, inn: $inn, snils: $snils, policy_number: $policy_number, allergies: $allergies, chronic_diseases: $chronic_diseases, notes: $notes, total_appointments: $total_appointments, completed_appointments: $completed_appointments, cancelled_appointments: $cancelled_appointments, last_appointment: $last_appointment, documents: $documents, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$PatientModelCopyWith<$Res> implements $PatientModelCopyWith<$Res> {
  factory _$PatientModelCopyWith(_PatientModel value, $Res Function(_PatientModel) _then) = __$PatientModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String first_name, String last_name, String? middle_name, String full_name, String? short_name, String date_of_birth, int? age, String? age_group, String gender, String phone, String? email, String? address, String? inn, String? snils, String? policy_number, String? allergies, String? chronic_diseases, String? notes, int? total_appointments, int? completed_appointments, int? cancelled_appointments, String? last_appointment, List<Map<String, dynamic>>? documents, String? created_at, String? updated_at
});




}
/// @nodoc
class __$PatientModelCopyWithImpl<$Res>
    implements _$PatientModelCopyWith<$Res> {
  __$PatientModelCopyWithImpl(this._self, this._then);

  final _PatientModel _self;
  final $Res Function(_PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? first_name = null,Object? last_name = null,Object? middle_name = freezed,Object? full_name = null,Object? short_name = freezed,Object? date_of_birth = null,Object? age = freezed,Object? age_group = freezed,Object? gender = null,Object? phone = null,Object? email = freezed,Object? address = freezed,Object? inn = freezed,Object? snils = freezed,Object? policy_number = freezed,Object? allergies = freezed,Object? chronic_diseases = freezed,Object? notes = freezed,Object? total_appointments = freezed,Object? completed_appointments = freezed,Object? cancelled_appointments = freezed,Object? last_appointment = freezed,Object? documents = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_PatientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,first_name: null == first_name ? _self.first_name : first_name // ignore: cast_nullable_to_non_nullable
as String,last_name: null == last_name ? _self.last_name : last_name // ignore: cast_nullable_to_non_nullable
as String,middle_name: freezed == middle_name ? _self.middle_name : middle_name // ignore: cast_nullable_to_non_nullable
as String?,full_name: null == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,date_of_birth: null == date_of_birth ? _self.date_of_birth : date_of_birth // ignore: cast_nullable_to_non_nullable
as String,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,age_group: freezed == age_group ? _self.age_group : age_group // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,inn: freezed == inn ? _self.inn : inn // ignore: cast_nullable_to_non_nullable
as String?,snils: freezed == snils ? _self.snils : snils // ignore: cast_nullable_to_non_nullable
as String?,policy_number: freezed == policy_number ? _self.policy_number : policy_number // ignore: cast_nullable_to_non_nullable
as String?,allergies: freezed == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as String?,chronic_diseases: freezed == chronic_diseases ? _self.chronic_diseases : chronic_diseases // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,total_appointments: freezed == total_appointments ? _self.total_appointments : total_appointments // ignore: cast_nullable_to_non_nullable
as int?,completed_appointments: freezed == completed_appointments ? _self.completed_appointments : completed_appointments // ignore: cast_nullable_to_non_nullable
as int?,cancelled_appointments: freezed == cancelled_appointments ? _self.cancelled_appointments : cancelled_appointments // ignore: cast_nullable_to_non_nullable
as int?,last_appointment: freezed == last_appointment ? _self.last_appointment : last_appointment // ignore: cast_nullable_to_non_nullable
as String?,documents: freezed == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
