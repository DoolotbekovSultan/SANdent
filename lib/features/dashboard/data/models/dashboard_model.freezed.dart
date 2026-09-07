// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

 DashboardTodayModel get today; DashboardWeekModel get week; DashboardMonthModel get month; DashboardTotalModel get total; List<Map<String, dynamic>>? get recent_appointments; List<Map<String, dynamic>>? get recent_patients;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.today, _this.today) || other.today == _this.today)&&(identical(other.week, _this.week) || other.week == _this.week)&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.recent_appointments, _this.recent_appointments)&&const DeepCollectionEquality().equals(other.recent_patients, _this.recent_patients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardModel;
  return Object.hash(runtimeType,_this.today,_this.week,_this.month,_this.total,const DeepCollectionEquality().hash(_this.recent_appointments),const DeepCollectionEquality().hash(_this.recent_patients));
}

@override
String toString() {
  final _this = this as DashboardModel;
  return 'DashboardModel(today: ${_this.today}, week: ${_this.week}, month: ${_this.month}, total: ${_this.total}, recent_appointments: ${_this.recent_appointments}, recent_patients: ${_this.recent_patients})';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
 DashboardTodayModel today, DashboardWeekModel week, DashboardMonthModel month, DashboardTotalModel total, List<Map<String, dynamic>>? recent_appointments, List<Map<String, dynamic>>? recent_patients
});


$DashboardTodayModelCopyWith<$Res> get today;$DashboardWeekModelCopyWith<$Res> get week;$DashboardMonthModelCopyWith<$Res> get month;$DashboardTotalModelCopyWith<$Res> get total;

}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? week = null,Object? month = null,Object? total = null,Object? recent_appointments = freezed,Object? recent_patients = freezed,}) {
  return _then(DashboardModel(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DashboardTodayModel,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as DashboardWeekModel,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DashboardMonthModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as DashboardTotalModel,recent_appointments: freezed == recent_appointments ? _self.recent_appointments : recent_appointments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,recent_patients: freezed == recent_patients ? _self.recent_patients : recent_patients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTodayModelCopyWith<$Res> get today {
  
  return $DashboardTodayModelCopyWith<$Res>(_self.today, (value) {
    return _then(_self.copyWith(today: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardWeekModelCopyWith<$Res> get week {
  
  return $DashboardWeekModelCopyWith<$Res>(_self.week, (value) {
    return _then(_self.copyWith(week: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardMonthModelCopyWith<$Res> get month {
  
  return $DashboardMonthModelCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTotalModelCopyWith<$Res> get total {
  
  return $DashboardTotalModelCopyWith<$Res>(_self.total, (value) {
    return _then(_self.copyWith(total: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DashboardTodayModel today,  DashboardWeekModel week,  DashboardMonthModel month,  DashboardTotalModel total,  List<Map<String, dynamic>>? recent_appointments,  List<Map<String, dynamic>>? recent_patients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.today,_that.week,_that.month,_that.total,_that.recent_appointments,_that.recent_patients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DashboardTodayModel today,  DashboardWeekModel week,  DashboardMonthModel month,  DashboardTotalModel total,  List<Map<String, dynamic>>? recent_appointments,  List<Map<String, dynamic>>? recent_patients)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.today,_that.week,_that.month,_that.total,_that.recent_appointments,_that.recent_patients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DashboardTodayModel today,  DashboardWeekModel week,  DashboardMonthModel month,  DashboardTotalModel total,  List<Map<String, dynamic>>? recent_appointments,  List<Map<String, dynamic>>? recent_patients)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.today,_that.week,_that.month,_that.total,_that.recent_appointments,_that.recent_patients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel implements DashboardModel {
  const _DashboardModel({required this.today, required this.week, required this.month, required this.total, required  List<Map<String, dynamic>>? recent_appointments, required  List<Map<String, dynamic>>? recent_patients}): _recent_appointments = recent_appointments,_recent_patients = recent_patients;
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override final  DashboardTodayModel today;
@override final  DashboardWeekModel week;
@override final  DashboardMonthModel month;
@override final  DashboardTotalModel total;
 final  List<Map<String, dynamic>>? _recent_appointments;
@override List<Map<String, dynamic>>? get recent_appointments {
  final value = _recent_appointments;
  if (value == null) return null;
  if (_recent_appointments is EqualUnmodifiableListView) return _recent_appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _recent_patients;
@override List<Map<String, dynamic>>? get recent_patients {
  final value = _recent_patients;
  if (value == null) return null;
  if (_recent_patients is EqualUnmodifiableListView) return _recent_patients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.today, today) || other.today == today)&&(identical(other.week, week) || other.week == week)&&(identical(other.month, month) || other.month == month)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.recent_appointments, _recent_appointments)&&const DeepCollectionEquality().equals(other.recent_patients, _recent_patients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,today,week,month,total,const DeepCollectionEquality().hash(_recent_appointments),const DeepCollectionEquality().hash(_recent_patients));
}

@override
String toString() {
    return 'DashboardModel(today: $today, week: $week, month: $month, total: $total, recent_appointments: $recent_appointments, recent_patients: $recent_patients)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
 DashboardTodayModel today, DashboardWeekModel week, DashboardMonthModel month, DashboardTotalModel total, List<Map<String, dynamic>>? recent_appointments, List<Map<String, dynamic>>? recent_patients
});


@override $DashboardTodayModelCopyWith<$Res> get today;@override $DashboardWeekModelCopyWith<$Res> get week;@override $DashboardMonthModelCopyWith<$Res> get month;@override $DashboardTotalModelCopyWith<$Res> get total;

}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? week = null,Object? month = null,Object? total = null,Object? recent_appointments = freezed,Object? recent_patients = freezed,}) {
  return _then(_DashboardModel(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as DashboardTodayModel,week: null == week ? _self.week : week // ignore: cast_nullable_to_non_nullable
as DashboardWeekModel,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DashboardMonthModel,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as DashboardTotalModel,recent_appointments: freezed == recent_appointments ? _self._recent_appointments : recent_appointments // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,recent_patients: freezed == recent_patients ? _self._recent_patients : recent_patients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTodayModelCopyWith<$Res> get today {
  
  return $DashboardTodayModelCopyWith<$Res>(_self.today, (value) {
    return _then(_self.copyWith(today: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardWeekModelCopyWith<$Res> get week {
  
  return $DashboardWeekModelCopyWith<$Res>(_self.week, (value) {
    return _then(_self.copyWith(week: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardMonthModelCopyWith<$Res> get month {
  
  return $DashboardMonthModelCopyWith<$Res>(_self.month, (value) {
    return _then(_self.copyWith(month: value));
  });
}/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardTotalModelCopyWith<$Res> get total {
  
  return $DashboardTotalModelCopyWith<$Res>(_self.total, (value) {
    return _then(_self.copyWith(total: value));
  });
}
}


/// @nodoc
mixin _$DashboardTodayModel {

 String? get date; int get appointments; int get appointments_completed; int get new_patients; num get revenue; int get active_doctors;
/// Create a copy of DashboardTodayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardTodayModelCopyWith<DashboardTodayModel> get copyWith => _$DashboardTodayModelCopyWithImpl<DashboardTodayModel>(this as DashboardTodayModel, _$identity);

  /// Serializes this DashboardTodayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardTodayModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardTodayModel&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.appointments, _this.appointments) || other.appointments == _this.appointments)&&(identical(other.appointments_completed, _this.appointments_completed) || other.appointments_completed == _this.appointments_completed)&&(identical(other.new_patients, _this.new_patients) || other.new_patients == _this.new_patients)&&(identical(other.revenue, _this.revenue) || other.revenue == _this.revenue)&&(identical(other.active_doctors, _this.active_doctors) || other.active_doctors == _this.active_doctors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardTodayModel;
  return Object.hash(runtimeType,_this.date,_this.appointments,_this.appointments_completed,_this.new_patients,_this.revenue,_this.active_doctors);
}

@override
String toString() {
  final _this = this as DashboardTodayModel;
  return 'DashboardTodayModel(date: ${_this.date}, appointments: ${_this.appointments}, appointments_completed: ${_this.appointments_completed}, new_patients: ${_this.new_patients}, revenue: ${_this.revenue}, active_doctors: ${_this.active_doctors})';
}


}

/// @nodoc
abstract mixin class $DashboardTodayModelCopyWith<$Res>  {
  factory $DashboardTodayModelCopyWith(DashboardTodayModel value, $Res Function(DashboardTodayModel) _then) = _$DashboardTodayModelCopyWithImpl;
@useResult
$Res call({
 String? date, int appointments, int appointments_completed, int new_patients, num revenue, int active_doctors
});




}
/// @nodoc
class _$DashboardTodayModelCopyWithImpl<$Res>
    implements $DashboardTodayModelCopyWith<$Res> {
  _$DashboardTodayModelCopyWithImpl(this._self, this._then);

  final DashboardTodayModel _self;
  final $Res Function(DashboardTodayModel) _then;

/// Create a copy of DashboardTodayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? appointments = null,Object? appointments_completed = null,Object? new_patients = null,Object? revenue = null,Object? active_doctors = null,}) {
  return _then(DashboardTodayModel(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as int,appointments_completed: null == appointments_completed ? _self.appointments_completed : appointments_completed // ignore: cast_nullable_to_non_nullable
as int,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as num,active_doctors: null == active_doctors ? _self.active_doctors : active_doctors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardTodayModel].
extension DashboardTodayModelPatterns on DashboardTodayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardTodayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardTodayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardTodayModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardTodayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardTodayModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardTodayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? date,  int appointments,  int appointments_completed,  int new_patients,  num revenue,  int active_doctors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardTodayModel() when $default != null:
return $default(_that.date,_that.appointments,_that.appointments_completed,_that.new_patients,_that.revenue,_that.active_doctors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? date,  int appointments,  int appointments_completed,  int new_patients,  num revenue,  int active_doctors)  $default,) {final _that = this;
switch (_that) {
case _DashboardTodayModel():
return $default(_that.date,_that.appointments,_that.appointments_completed,_that.new_patients,_that.revenue,_that.active_doctors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? date,  int appointments,  int appointments_completed,  int new_patients,  num revenue,  int active_doctors)?  $default,) {final _that = this;
switch (_that) {
case _DashboardTodayModel() when $default != null:
return $default(_that.date,_that.appointments,_that.appointments_completed,_that.new_patients,_that.revenue,_that.active_doctors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardTodayModel implements DashboardTodayModel {
  const _DashboardTodayModel({required this.date, required this.appointments, required this.appointments_completed, required this.new_patients, required this.revenue, required this.active_doctors});
  factory _DashboardTodayModel.fromJson(Map<String, dynamic> json) => _$DashboardTodayModelFromJson(json);

@override final  String? date;
@override final  int appointments;
@override final  int appointments_completed;
@override final  int new_patients;
@override final  num revenue;
@override final  int active_doctors;

/// Create a copy of DashboardTodayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardTodayModelCopyWith<_DashboardTodayModel> get copyWith => __$DashboardTodayModelCopyWithImpl<_DashboardTodayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardTodayModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardTodayModel&&(identical(other.date, date) || other.date == date)&&(identical(other.appointments, appointments) || other.appointments == appointments)&&(identical(other.appointments_completed, appointments_completed) || other.appointments_completed == appointments_completed)&&(identical(other.new_patients, new_patients) || other.new_patients == new_patients)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.active_doctors, active_doctors) || other.active_doctors == active_doctors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,appointments,appointments_completed,new_patients,revenue,active_doctors);
}

@override
String toString() {
    return 'DashboardTodayModel(date: $date, appointments: $appointments, appointments_completed: $appointments_completed, new_patients: $new_patients, revenue: $revenue, active_doctors: $active_doctors)';
}


}

/// @nodoc
abstract mixin class _$DashboardTodayModelCopyWith<$Res> implements $DashboardTodayModelCopyWith<$Res> {
  factory _$DashboardTodayModelCopyWith(_DashboardTodayModel value, $Res Function(_DashboardTodayModel) _then) = __$DashboardTodayModelCopyWithImpl;
@override @useResult
$Res call({
 String? date, int appointments, int appointments_completed, int new_patients, num revenue, int active_doctors
});




}
/// @nodoc
class __$DashboardTodayModelCopyWithImpl<$Res>
    implements _$DashboardTodayModelCopyWith<$Res> {
  __$DashboardTodayModelCopyWithImpl(this._self, this._then);

  final _DashboardTodayModel _self;
  final $Res Function(_DashboardTodayModel) _then;

/// Create a copy of DashboardTodayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? appointments = null,Object? appointments_completed = null,Object? new_patients = null,Object? revenue = null,Object? active_doctors = null,}) {
  return _then(_DashboardTodayModel(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as int,appointments_completed: null == appointments_completed ? _self.appointments_completed : appointments_completed // ignore: cast_nullable_to_non_nullable
as int,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as num,active_doctors: null == active_doctors ? _self.active_doctors : active_doctors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardWeekModel {

 String? get start_date; int get appointments; int get appointments_completed;
/// Create a copy of DashboardWeekModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardWeekModelCopyWith<DashboardWeekModel> get copyWith => _$DashboardWeekModelCopyWithImpl<DashboardWeekModel>(this as DashboardWeekModel, _$identity);

  /// Serializes this DashboardWeekModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardWeekModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardWeekModel&&(identical(other.start_date, _this.start_date) || other.start_date == _this.start_date)&&(identical(other.appointments, _this.appointments) || other.appointments == _this.appointments)&&(identical(other.appointments_completed, _this.appointments_completed) || other.appointments_completed == _this.appointments_completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardWeekModel;
  return Object.hash(runtimeType,_this.start_date,_this.appointments,_this.appointments_completed);
}

@override
String toString() {
  final _this = this as DashboardWeekModel;
  return 'DashboardWeekModel(start_date: ${_this.start_date}, appointments: ${_this.appointments}, appointments_completed: ${_this.appointments_completed})';
}


}

/// @nodoc
abstract mixin class $DashboardWeekModelCopyWith<$Res>  {
  factory $DashboardWeekModelCopyWith(DashboardWeekModel value, $Res Function(DashboardWeekModel) _then) = _$DashboardWeekModelCopyWithImpl;
@useResult
$Res call({
 String? start_date, int appointments, int appointments_completed
});




}
/// @nodoc
class _$DashboardWeekModelCopyWithImpl<$Res>
    implements $DashboardWeekModelCopyWith<$Res> {
  _$DashboardWeekModelCopyWithImpl(this._self, this._then);

  final DashboardWeekModel _self;
  final $Res Function(DashboardWeekModel) _then;

/// Create a copy of DashboardWeekModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start_date = freezed,Object? appointments = null,Object? appointments_completed = null,}) {
  return _then(DashboardWeekModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as int,appointments_completed: null == appointments_completed ? _self.appointments_completed : appointments_completed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardWeekModel].
extension DashboardWeekModelPatterns on DashboardWeekModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardWeekModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardWeekModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardWeekModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardWeekModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardWeekModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardWeekModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start_date,  int appointments,  int appointments_completed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardWeekModel() when $default != null:
return $default(_that.start_date,_that.appointments,_that.appointments_completed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start_date,  int appointments,  int appointments_completed)  $default,) {final _that = this;
switch (_that) {
case _DashboardWeekModel():
return $default(_that.start_date,_that.appointments,_that.appointments_completed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start_date,  int appointments,  int appointments_completed)?  $default,) {final _that = this;
switch (_that) {
case _DashboardWeekModel() when $default != null:
return $default(_that.start_date,_that.appointments,_that.appointments_completed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardWeekModel implements DashboardWeekModel {
  const _DashboardWeekModel({required this.start_date, required this.appointments, required this.appointments_completed});
  factory _DashboardWeekModel.fromJson(Map<String, dynamic> json) => _$DashboardWeekModelFromJson(json);

@override final  String? start_date;
@override final  int appointments;
@override final  int appointments_completed;

/// Create a copy of DashboardWeekModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardWeekModelCopyWith<_DashboardWeekModel> get copyWith => __$DashboardWeekModelCopyWithImpl<_DashboardWeekModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardWeekModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardWeekModel&&(identical(other.start_date, start_date) || other.start_date == start_date)&&(identical(other.appointments, appointments) || other.appointments == appointments)&&(identical(other.appointments_completed, appointments_completed) || other.appointments_completed == appointments_completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,start_date,appointments,appointments_completed);
}

@override
String toString() {
    return 'DashboardWeekModel(start_date: $start_date, appointments: $appointments, appointments_completed: $appointments_completed)';
}


}

/// @nodoc
abstract mixin class _$DashboardWeekModelCopyWith<$Res> implements $DashboardWeekModelCopyWith<$Res> {
  factory _$DashboardWeekModelCopyWith(_DashboardWeekModel value, $Res Function(_DashboardWeekModel) _then) = __$DashboardWeekModelCopyWithImpl;
@override @useResult
$Res call({
 String? start_date, int appointments, int appointments_completed
});




}
/// @nodoc
class __$DashboardWeekModelCopyWithImpl<$Res>
    implements _$DashboardWeekModelCopyWith<$Res> {
  __$DashboardWeekModelCopyWithImpl(this._self, this._then);

  final _DashboardWeekModel _self;
  final $Res Function(_DashboardWeekModel) _then;

/// Create a copy of DashboardWeekModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start_date = freezed,Object? appointments = null,Object? appointments_completed = null,}) {
  return _then(_DashboardWeekModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as int,appointments_completed: null == appointments_completed ? _self.appointments_completed : appointments_completed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardMonthModel {

 String? get start_date; int get new_patients; num get revenue;
/// Create a copy of DashboardMonthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardMonthModelCopyWith<DashboardMonthModel> get copyWith => _$DashboardMonthModelCopyWithImpl<DashboardMonthModel>(this as DashboardMonthModel, _$identity);

  /// Serializes this DashboardMonthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardMonthModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardMonthModel&&(identical(other.start_date, _this.start_date) || other.start_date == _this.start_date)&&(identical(other.new_patients, _this.new_patients) || other.new_patients == _this.new_patients)&&(identical(other.revenue, _this.revenue) || other.revenue == _this.revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardMonthModel;
  return Object.hash(runtimeType,_this.start_date,_this.new_patients,_this.revenue);
}

@override
String toString() {
  final _this = this as DashboardMonthModel;
  return 'DashboardMonthModel(start_date: ${_this.start_date}, new_patients: ${_this.new_patients}, revenue: ${_this.revenue})';
}


}

/// @nodoc
abstract mixin class $DashboardMonthModelCopyWith<$Res>  {
  factory $DashboardMonthModelCopyWith(DashboardMonthModel value, $Res Function(DashboardMonthModel) _then) = _$DashboardMonthModelCopyWithImpl;
@useResult
$Res call({
 String? start_date, int new_patients, num revenue
});




}
/// @nodoc
class _$DashboardMonthModelCopyWithImpl<$Res>
    implements $DashboardMonthModelCopyWith<$Res> {
  _$DashboardMonthModelCopyWithImpl(this._self, this._then);

  final DashboardMonthModel _self;
  final $Res Function(DashboardMonthModel) _then;

/// Create a copy of DashboardMonthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start_date = freezed,Object? new_patients = null,Object? revenue = null,}) {
  return _then(DashboardMonthModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardMonthModel].
extension DashboardMonthModelPatterns on DashboardMonthModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardMonthModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardMonthModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardMonthModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardMonthModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardMonthModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardMonthModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start_date,  int new_patients,  num revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardMonthModel() when $default != null:
return $default(_that.start_date,_that.new_patients,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start_date,  int new_patients,  num revenue)  $default,) {final _that = this;
switch (_that) {
case _DashboardMonthModel():
return $default(_that.start_date,_that.new_patients,_that.revenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start_date,  int new_patients,  num revenue)?  $default,) {final _that = this;
switch (_that) {
case _DashboardMonthModel() when $default != null:
return $default(_that.start_date,_that.new_patients,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardMonthModel implements DashboardMonthModel {
  const _DashboardMonthModel({required this.start_date, required this.new_patients, required this.revenue});
  factory _DashboardMonthModel.fromJson(Map<String, dynamic> json) => _$DashboardMonthModelFromJson(json);

@override final  String? start_date;
@override final  int new_patients;
@override final  num revenue;

/// Create a copy of DashboardMonthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardMonthModelCopyWith<_DashboardMonthModel> get copyWith => __$DashboardMonthModelCopyWithImpl<_DashboardMonthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardMonthModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardMonthModel&&(identical(other.start_date, start_date) || other.start_date == start_date)&&(identical(other.new_patients, new_patients) || other.new_patients == new_patients)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,start_date,new_patients,revenue);
}

@override
String toString() {
    return 'DashboardMonthModel(start_date: $start_date, new_patients: $new_patients, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$DashboardMonthModelCopyWith<$Res> implements $DashboardMonthModelCopyWith<$Res> {
  factory _$DashboardMonthModelCopyWith(_DashboardMonthModel value, $Res Function(_DashboardMonthModel) _then) = __$DashboardMonthModelCopyWithImpl;
@override @useResult
$Res call({
 String? start_date, int new_patients, num revenue
});




}
/// @nodoc
class __$DashboardMonthModelCopyWithImpl<$Res>
    implements _$DashboardMonthModelCopyWith<$Res> {
  __$DashboardMonthModelCopyWithImpl(this._self, this._then);

  final _DashboardMonthModel _self;
  final $Res Function(_DashboardMonthModel) _then;

/// Create a copy of DashboardMonthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start_date = freezed,Object? new_patients = null,Object? revenue = null,}) {
  return _then(_DashboardMonthModel(
start_date: freezed == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String?,new_patients: null == new_patients ? _self.new_patients : new_patients // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$DashboardTotalModel {

 int get patients; int get doctors; int get materials_need_restock; int get unread_notifications;
/// Create a copy of DashboardTotalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardTotalModelCopyWith<DashboardTotalModel> get copyWith => _$DashboardTotalModelCopyWithImpl<DashboardTotalModel>(this as DashboardTotalModel, _$identity);

  /// Serializes this DashboardTotalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardTotalModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardTotalModel&&(identical(other.patients, _this.patients) || other.patients == _this.patients)&&(identical(other.doctors, _this.doctors) || other.doctors == _this.doctors)&&(identical(other.materials_need_restock, _this.materials_need_restock) || other.materials_need_restock == _this.materials_need_restock)&&(identical(other.unread_notifications, _this.unread_notifications) || other.unread_notifications == _this.unread_notifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardTotalModel;
  return Object.hash(runtimeType,_this.patients,_this.doctors,_this.materials_need_restock,_this.unread_notifications);
}

@override
String toString() {
  final _this = this as DashboardTotalModel;
  return 'DashboardTotalModel(patients: ${_this.patients}, doctors: ${_this.doctors}, materials_need_restock: ${_this.materials_need_restock}, unread_notifications: ${_this.unread_notifications})';
}


}

/// @nodoc
abstract mixin class $DashboardTotalModelCopyWith<$Res>  {
  factory $DashboardTotalModelCopyWith(DashboardTotalModel value, $Res Function(DashboardTotalModel) _then) = _$DashboardTotalModelCopyWithImpl;
@useResult
$Res call({
 int patients, int doctors, int materials_need_restock, int unread_notifications
});




}
/// @nodoc
class _$DashboardTotalModelCopyWithImpl<$Res>
    implements $DashboardTotalModelCopyWith<$Res> {
  _$DashboardTotalModelCopyWithImpl(this._self, this._then);

  final DashboardTotalModel _self;
  final $Res Function(DashboardTotalModel) _then;

/// Create a copy of DashboardTotalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? patients = null,Object? doctors = null,Object? materials_need_restock = null,Object? unread_notifications = null,}) {
  return _then(DashboardTotalModel(
patients: null == patients ? _self.patients : patients // ignore: cast_nullable_to_non_nullable
as int,doctors: null == doctors ? _self.doctors : doctors // ignore: cast_nullable_to_non_nullable
as int,materials_need_restock: null == materials_need_restock ? _self.materials_need_restock : materials_need_restock // ignore: cast_nullable_to_non_nullable
as int,unread_notifications: null == unread_notifications ? _self.unread_notifications : unread_notifications // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardTotalModel].
extension DashboardTotalModelPatterns on DashboardTotalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardTotalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardTotalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardTotalModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardTotalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardTotalModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardTotalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int patients,  int doctors,  int materials_need_restock,  int unread_notifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardTotalModel() when $default != null:
return $default(_that.patients,_that.doctors,_that.materials_need_restock,_that.unread_notifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int patients,  int doctors,  int materials_need_restock,  int unread_notifications)  $default,) {final _that = this;
switch (_that) {
case _DashboardTotalModel():
return $default(_that.patients,_that.doctors,_that.materials_need_restock,_that.unread_notifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int patients,  int doctors,  int materials_need_restock,  int unread_notifications)?  $default,) {final _that = this;
switch (_that) {
case _DashboardTotalModel() when $default != null:
return $default(_that.patients,_that.doctors,_that.materials_need_restock,_that.unread_notifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardTotalModel implements DashboardTotalModel {
  const _DashboardTotalModel({required this.patients, required this.doctors, required this.materials_need_restock, required this.unread_notifications});
  factory _DashboardTotalModel.fromJson(Map<String, dynamic> json) => _$DashboardTotalModelFromJson(json);

@override final  int patients;
@override final  int doctors;
@override final  int materials_need_restock;
@override final  int unread_notifications;

/// Create a copy of DashboardTotalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardTotalModelCopyWith<_DashboardTotalModel> get copyWith => __$DashboardTotalModelCopyWithImpl<_DashboardTotalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardTotalModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardTotalModel&&(identical(other.patients, patients) || other.patients == patients)&&(identical(other.doctors, doctors) || other.doctors == doctors)&&(identical(other.materials_need_restock, materials_need_restock) || other.materials_need_restock == materials_need_restock)&&(identical(other.unread_notifications, unread_notifications) || other.unread_notifications == unread_notifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,patients,doctors,materials_need_restock,unread_notifications);
}

@override
String toString() {
    return 'DashboardTotalModel(patients: $patients, doctors: $doctors, materials_need_restock: $materials_need_restock, unread_notifications: $unread_notifications)';
}


}

/// @nodoc
abstract mixin class _$DashboardTotalModelCopyWith<$Res> implements $DashboardTotalModelCopyWith<$Res> {
  factory _$DashboardTotalModelCopyWith(_DashboardTotalModel value, $Res Function(_DashboardTotalModel) _then) = __$DashboardTotalModelCopyWithImpl;
@override @useResult
$Res call({
 int patients, int doctors, int materials_need_restock, int unread_notifications
});




}
/// @nodoc
class __$DashboardTotalModelCopyWithImpl<$Res>
    implements _$DashboardTotalModelCopyWith<$Res> {
  __$DashboardTotalModelCopyWithImpl(this._self, this._then);

  final _DashboardTotalModel _self;
  final $Res Function(_DashboardTotalModel) _then;

/// Create a copy of DashboardTotalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? patients = null,Object? doctors = null,Object? materials_need_restock = null,Object? unread_notifications = null,}) {
  return _then(_DashboardTotalModel(
patients: null == patients ? _self.patients : patients // ignore: cast_nullable_to_non_nullable
as int,doctors: null == doctors ? _self.doctors : doctors // ignore: cast_nullable_to_non_nullable
as int,materials_need_restock: null == materials_need_restock ? _self.materials_need_restock : materials_need_restock // ignore: cast_nullable_to_non_nullable
as int,unread_notifications: null == unread_notifications ? _self.unread_notifications : unread_notifications // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
