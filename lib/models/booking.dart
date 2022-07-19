import 'package:atypik_house_flutter/models/accommodation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required DateTime start,
    required DateTime end,
    required int total,
    required String user_id,
    Accommodation? accommodation,
  }) = _Booking;

  factory Booking.fromJson(json) => _$BookingFromJson(json);
}
