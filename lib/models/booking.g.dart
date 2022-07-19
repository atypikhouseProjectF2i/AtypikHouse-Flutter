// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$$_BookingFromJson(Map<String, dynamic> json) => _$_Booking(
      id: json['id'] as int,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      total: json['total'] as int,
      user_id: json['user_id'] as String,
      accommodation: json['accommodation'] == null
          ? null
          : Accommodation.fromJson(json['accommodation']),
    );

Map<String, dynamic> _$$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'total': instance.total,
      'user_id': instance.user_id,
      'accommodation': instance.accommodation,
    };
