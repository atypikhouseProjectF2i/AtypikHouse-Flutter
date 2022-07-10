import 'package:freezed_annotation/freezed_annotation.dart';

part 'accomodation.g.dart';
part 'accomodation.freezed.dart';

@freezed
class Accomodation with _$Accomodation {
  const factory Accomodation(
      {required String id,
      required String name,
      required String firstname,
      required String email,
      required String password}) = _Accomodation;

  factory Accomodation.fromJson(Map<String, dynamic> json) =>
      _$AccomodationFromJson(json);
}
