// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_slots_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailableSlotsModel {

 Map<String, dynamic> get doctor; String get date; List<TimeSlotModel> get available_slots;
/// Create a copy of AvailableSlotsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableSlotsModelCopyWith<AvailableSlotsModel> get copyWith => _$AvailableSlotsModelCopyWithImpl<AvailableSlotsModel>(this as AvailableSlotsModel, _$identity);

  /// Serializes this AvailableSlotsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AvailableSlotsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableSlotsModel&&const DeepCollectionEquality().equals(other.doctor, _this.doctor)&&(identical(other.date, _this.date) || other.date == _this.date)&&const DeepCollectionEquality().equals(other.available_slots, _this.available_slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AvailableSlotsModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.doctor),_this.date,const DeepCollectionEquality().hash(_this.available_slots));
}

@override
String toString() {
  final _this = this as AvailableSlotsModel;
  return 'AvailableSlotsModel(doctor: ${_this.doctor}, date: ${_this.date}, available_slots: ${_this.available_slots})';
}


}

/// @nodoc
abstract mixin class $AvailableSlotsModelCopyWith<$Res>  {
  factory $AvailableSlotsModelCopyWith(AvailableSlotsModel value, $Res Function(AvailableSlotsModel) _then) = _$AvailableSlotsModelCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> doctor, String date, List<TimeSlotModel> available_slots
});




}
/// @nodoc
class _$AvailableSlotsModelCopyWithImpl<$Res>
    implements $AvailableSlotsModelCopyWith<$Res> {
  _$AvailableSlotsModelCopyWithImpl(this._self, this._then);

  final AvailableSlotsModel _self;
  final $Res Function(AvailableSlotsModel) _then;

/// Create a copy of AvailableSlotsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctor = null,Object? date = null,Object? available_slots = null,}) {
  return _then(AvailableSlotsModel(
doctor: null == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,available_slots: null == available_slots ? _self.available_slots : available_slots // ignore: cast_nullable_to_non_nullable
as List<TimeSlotModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableSlotsModel].
extension AvailableSlotsModelPatterns on AvailableSlotsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableSlotsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableSlotsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableSlotsModel value)  $default,){
final _that = this;
switch (_that) {
case _AvailableSlotsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableSlotsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableSlotsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic> doctor,  String date,  List<TimeSlotModel> available_slots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableSlotsModel() when $default != null:
return $default(_that.doctor,_that.date,_that.available_slots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic> doctor,  String date,  List<TimeSlotModel> available_slots)  $default,) {final _that = this;
switch (_that) {
case _AvailableSlotsModel():
return $default(_that.doctor,_that.date,_that.available_slots);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic> doctor,  String date,  List<TimeSlotModel> available_slots)?  $default,) {final _that = this;
switch (_that) {
case _AvailableSlotsModel() when $default != null:
return $default(_that.doctor,_that.date,_that.available_slots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableSlotsModel implements AvailableSlotsModel {
  const _AvailableSlotsModel({required  Map<String, dynamic> doctor, required this.date, required  List<TimeSlotModel> available_slots}): _doctor = doctor,_available_slots = available_slots;
  factory _AvailableSlotsModel.fromJson(Map<String, dynamic> json) => _$AvailableSlotsModelFromJson(json);

 final  Map<String, dynamic> _doctor;
@override Map<String, dynamic> get doctor {
  if (_doctor is EqualUnmodifiableMapView) return _doctor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_doctor);
}

@override final  String date;
 final  List<TimeSlotModel> _available_slots;
@override List<TimeSlotModel> get available_slots {
  if (_available_slots is EqualUnmodifiableListView) return _available_slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_available_slots);
}


/// Create a copy of AvailableSlotsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableSlotsModelCopyWith<_AvailableSlotsModel> get copyWith => __$AvailableSlotsModelCopyWithImpl<_AvailableSlotsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableSlotsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableSlotsModel&&const DeepCollectionEquality().equals(other.doctor, _doctor)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.available_slots, _available_slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctor),date,const DeepCollectionEquality().hash(_available_slots));
}

@override
String toString() {
    return 'AvailableSlotsModel(doctor: $doctor, date: $date, available_slots: $available_slots)';
}


}

/// @nodoc
abstract mixin class _$AvailableSlotsModelCopyWith<$Res> implements $AvailableSlotsModelCopyWith<$Res> {
  factory _$AvailableSlotsModelCopyWith(_AvailableSlotsModel value, $Res Function(_AvailableSlotsModel) _then) = __$AvailableSlotsModelCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> doctor, String date, List<TimeSlotModel> available_slots
});




}
/// @nodoc
class __$AvailableSlotsModelCopyWithImpl<$Res>
    implements _$AvailableSlotsModelCopyWith<$Res> {
  __$AvailableSlotsModelCopyWithImpl(this._self, this._then);

  final _AvailableSlotsModel _self;
  final $Res Function(_AvailableSlotsModel) _then;

/// Create a copy of AvailableSlotsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctor = null,Object? date = null,Object? available_slots = null,}) {
  return _then(_AvailableSlotsModel(
doctor: null == doctor ? _self._doctor : doctor // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,available_slots: null == available_slots ? _self._available_slots : available_slots // ignore: cast_nullable_to_non_nullable
as List<TimeSlotModel>,
  ));
}


}


/// @nodoc
mixin _$TimeSlotModel {

 String get start; String get end; int get duration; bool get available;
/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSlotModelCopyWith<TimeSlotModel> get copyWith => _$TimeSlotModelCopyWithImpl<TimeSlotModel>(this as TimeSlotModel, _$identity);

  /// Serializes this TimeSlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TimeSlotModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSlotModel&&(identical(other.start, _this.start) || other.start == _this.start)&&(identical(other.end, _this.end) || other.end == _this.end)&&(identical(other.duration, _this.duration) || other.duration == _this.duration)&&(identical(other.available, _this.available) || other.available == _this.available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TimeSlotModel;
  return Object.hash(runtimeType,_this.start,_this.end,_this.duration,_this.available);
}

@override
String toString() {
  final _this = this as TimeSlotModel;
  return 'TimeSlotModel(start: ${_this.start}, end: ${_this.end}, duration: ${_this.duration}, available: ${_this.available})';
}


}

/// @nodoc
abstract mixin class $TimeSlotModelCopyWith<$Res>  {
  factory $TimeSlotModelCopyWith(TimeSlotModel value, $Res Function(TimeSlotModel) _then) = _$TimeSlotModelCopyWithImpl;
@useResult
$Res call({
 String start, String end, int duration, bool available
});




}
/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._self, this._then);

  final TimeSlotModel _self;
  final $Res Function(TimeSlotModel) _then;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,Object? duration = null,Object? available = null,}) {
  return _then(TimeSlotModel(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeSlotModel].
extension TimeSlotModelPatterns on TimeSlotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeSlotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeSlotModel value)  $default,){
final _that = this;
switch (_that) {
case _TimeSlotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeSlotModel value)?  $default,){
final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String start,  String end,  int duration,  bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
return $default(_that.start,_that.end,_that.duration,_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String start,  String end,  int duration,  bool available)  $default,) {final _that = this;
switch (_that) {
case _TimeSlotModel():
return $default(_that.start,_that.end,_that.duration,_that.available);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String start,  String end,  int duration,  bool available)?  $default,) {final _that = this;
switch (_that) {
case _TimeSlotModel() when $default != null:
return $default(_that.start,_that.end,_that.duration,_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeSlotModel implements TimeSlotModel {
  const _TimeSlotModel({required this.start, required this.end, required this.duration, required this.available});
  factory _TimeSlotModel.fromJson(Map<String, dynamic> json) => _$TimeSlotModelFromJson(json);

@override final  String start;
@override final  String end;
@override final  int duration;
@override final  bool available;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSlotModelCopyWith<_TimeSlotModel> get copyWith => __$TimeSlotModelCopyWithImpl<_TimeSlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeSlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSlotModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,start,end,duration,available);
}

@override
String toString() {
    return 'TimeSlotModel(start: $start, end: $end, duration: $duration, available: $available)';
}


}

/// @nodoc
abstract mixin class _$TimeSlotModelCopyWith<$Res> implements $TimeSlotModelCopyWith<$Res> {
  factory _$TimeSlotModelCopyWith(_TimeSlotModel value, $Res Function(_TimeSlotModel) _then) = __$TimeSlotModelCopyWithImpl;
@override @useResult
$Res call({
 String start, String end, int duration, bool available
});




}
/// @nodoc
class __$TimeSlotModelCopyWithImpl<$Res>
    implements _$TimeSlotModelCopyWith<$Res> {
  __$TimeSlotModelCopyWithImpl(this._self, this._then);

  final _TimeSlotModel _self;
  final $Res Function(_TimeSlotModel) _then;

/// Create a copy of TimeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,Object? duration = null,Object? available = null,}) {
  return _then(_TimeSlotModel(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
