// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Accommodation _$$_AccommodationFromJson(Map<String, dynamic> json) =>
    _$_Accommodation(
      id: json['id'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      user_id: json['user_id'] as int,
    );

Map<String, dynamic> _$$_AccommodationToJson(_$_Accommodation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'user_id': instance.user_id,
    };
