// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_slots_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvailableSlotsModel _$AvailableSlotsModelFromJson(Map<String, dynamic> json) =>
    _AvailableSlotsModel(
      doctor: json['doctor'] as Map<String, dynamic>,
      date: json['date'] as String,
      available_slots: (json['available_slots'] as List<dynamic>)
          .map((e) => TimeSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvailableSlotsModelToJson(
  _AvailableSlotsModel instance,
) => <String, dynamic>{
  'doctor': instance.doctor,
  'date': instance.date,
  'available_slots': instance.available_slots,
};

_TimeSlotModel _$TimeSlotModelFromJson(Map<String, dynamic> json) =>
    _TimeSlotModel(
      start: json['start'] as String,
      end: json['end'] as String,
      duration: (json['duration'] as num).toInt(),
      available: json['available'] as bool,
    );

Map<String, dynamic> _$TimeSlotModelToJson(_TimeSlotModel instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'duration': instance.duration,
      'available': instance.available,
    };
