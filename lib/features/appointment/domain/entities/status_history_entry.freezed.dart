// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatusHistoryEntry {

 int? get id; String get status; String? get statusDisplay; String? get oldStatus; int? get changedBy; String? get changedByName; String? get note; String? get changedAt;
/// Create a copy of StatusHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusHistoryEntryCopyWith<StatusHistoryEntry> get copyWith => _$StatusHistoryEntryCopyWithImpl<StatusHistoryEntry>(this as StatusHistoryEntry, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StatusHistoryEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusHistoryEntry&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusDisplay, _this.statusDisplay) || other.statusDisplay == _this.statusDisplay)&&(identical(other.oldStatus, _this.oldStatus) || other.oldStatus == _this.oldStatus)&&(identical(other.changedBy, _this.changedBy) || other.changedBy == _this.changedBy)&&(identical(other.changedByName, _this.changedByName) || other.changedByName == _this.changedByName)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.changedAt, _this.changedAt) || other.changedAt == _this.changedAt));
}


@override
int get hashCode {
  final _this = this as StatusHistoryEntry;
  return Object.hash(runtimeType,_this.id,_this.status,_this.statusDisplay,_this.oldStatus,_this.changedBy,_this.changedByName,_this.note,_this.changedAt);
}

@override
String toString() {
  final _this = this as StatusHistoryEntry;
  return 'StatusHistoryEntry(id: ${_this.id}, status: ${_this.status}, statusDisplay: ${_this.statusDisplay}, oldStatus: ${_this.oldStatus}, changedBy: ${_this.changedBy}, changedByName: ${_this.changedByName}, note: ${_this.note}, changedAt: ${_this.changedAt})';
}


}

/// @nodoc
abstract mixin class $StatusHistoryEntryCopyWith<$Res>  {
  factory $StatusHistoryEntryCopyWith(StatusHistoryEntry value, $Res Function(StatusHistoryEntry) _then) = _$StatusHistoryEntryCopyWithImpl;
@useResult
$Res call({
 int? id, String status, String? statusDisplay, String? oldStatus, int? changedBy, String? changedByName, String? note, String? changedAt
});




}
/// @nodoc
class _$StatusHistoryEntryCopyWithImpl<$Res>
    implements $StatusHistoryEntryCopyWith<$Res> {
  _$StatusHistoryEntryCopyWithImpl(this._self, this._then);

  final StatusHistoryEntry _self;
  final $Res Function(StatusHistoryEntry) _then;

/// Create a copy of StatusHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = null,Object? statusDisplay = freezed,Object? oldStatus = freezed,Object? changedBy = freezed,Object? changedByName = freezed,Object? note = freezed,Object? changedAt = freezed,}) {
  return _then(StatusHistoryEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,oldStatus: freezed == oldStatus ? _self.oldStatus : oldStatus // ignore: cast_nullable_to_non_nullable
as String?,changedBy: freezed == changedBy ? _self.changedBy : changedBy // ignore: cast_nullable_to_non_nullable
as int?,changedByName: freezed == changedByName ? _self.changedByName : changedByName // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changedAt: freezed == changedAt ? _self.changedAt : changedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusHistoryEntry].
extension StatusHistoryEntryPatterns on StatusHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _StatusHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String status,  String? statusDisplay,  String? oldStatus,  int? changedBy,  String? changedByName,  String? note,  String? changedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusHistoryEntry() when $default != null:
return $default(_that.id,_that.status,_that.statusDisplay,_that.oldStatus,_that.changedBy,_that.changedByName,_that.note,_that.changedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String status,  String? statusDisplay,  String? oldStatus,  int? changedBy,  String? changedByName,  String? note,  String? changedAt)  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryEntry():
return $default(_that.id,_that.status,_that.statusDisplay,_that.oldStatus,_that.changedBy,_that.changedByName,_that.note,_that.changedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String status,  String? statusDisplay,  String? oldStatus,  int? changedBy,  String? changedByName,  String? note,  String? changedAt)?  $default,) {final _that = this;
switch (_that) {
case _StatusHistoryEntry() when $default != null:
return $default(_that.id,_that.status,_that.statusDisplay,_that.oldStatus,_that.changedBy,_that.changedByName,_that.note,_that.changedAt);case _:
  return null;

}
}

}

/// @nodoc


class _StatusHistoryEntry implements StatusHistoryEntry {
  const _StatusHistoryEntry({required this.id, required this.status, required this.statusDisplay, required this.oldStatus, required this.changedBy, required this.changedByName, required this.note, required this.changedAt});
  

@override final  int? id;
@override final  String status;
@override final  String? statusDisplay;
@override final  String? oldStatus;
@override final  int? changedBy;
@override final  String? changedByName;
@override final  String? note;
@override final  String? changedAt;

/// Create a copy of StatusHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusHistoryEntryCopyWith<_StatusHistoryEntry> get copyWith => __$StatusHistoryEntryCopyWithImpl<_StatusHistoryEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusHistoryEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.oldStatus, oldStatus) || other.oldStatus == oldStatus)&&(identical(other.changedBy, changedBy) || other.changedBy == changedBy)&&(identical(other.changedByName, changedByName) || other.changedByName == changedByName)&&(identical(other.note, note) || other.note == note)&&(identical(other.changedAt, changedAt) || other.changedAt == changedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,statusDisplay,oldStatus,changedBy,changedByName,note,changedAt);
}

@override
String toString() {
    return 'StatusHistoryEntry(id: $id, status: $status, statusDisplay: $statusDisplay, oldStatus: $oldStatus, changedBy: $changedBy, changedByName: $changedByName, note: $note, changedAt: $changedAt)';
}


}

/// @nodoc
abstract mixin class _$StatusHistoryEntryCopyWith<$Res> implements $StatusHistoryEntryCopyWith<$Res> {
  factory _$StatusHistoryEntryCopyWith(_StatusHistoryEntry value, $Res Function(_StatusHistoryEntry) _then) = __$StatusHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
 int? id, String status, String? statusDisplay, String? oldStatus, int? changedBy, String? changedByName, String? note, String? changedAt
});




}
/// @nodoc
class __$StatusHistoryEntryCopyWithImpl<$Res>
    implements _$StatusHistoryEntryCopyWith<$Res> {
  __$StatusHistoryEntryCopyWithImpl(this._self, this._then);

  final _StatusHistoryEntry _self;
  final $Res Function(_StatusHistoryEntry) _then;

/// Create a copy of StatusHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = null,Object? statusDisplay = freezed,Object? oldStatus = freezed,Object? changedBy = freezed,Object? changedByName = freezed,Object? note = freezed,Object? changedAt = freezed,}) {
  return _then(_StatusHistoryEntry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,oldStatus: freezed == oldStatus ? _self.oldStatus : oldStatus // ignore: cast_nullable_to_non_nullable
as String?,changedBy: freezed == changedBy ? _self.changedBy : changedBy // ignore: cast_nullable_to_non_nullable
as int?,changedByName: freezed == changedByName ? _self.changedByName : changedByName // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changedAt: freezed == changedAt ? _self.changedAt : changedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
