import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation.freezed.dart';
part 'accommodation.g.dart';

@freezed
class Accommodation with _$Accommodation {
  const factory Accommodation({
    required int id,
    required String name,
    required int price,
    // required int user_id,
  }) = _Accommodation;

  factory Accommodation.fromJson(json) => _$AccommodationFromJson(json);
}
