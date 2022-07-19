// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int get id => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  Accommodation? get accommodation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime start,
      DateTime end,
      int total,
      String user_id,
      Accommodation? accommodation});

  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res> implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  final Booking _value;
  // ignore: unused_field
  final $Res Function(Booking) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? total = freezed,
    Object? user_id = freezed,
    Object? accommodation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      accommodation: accommodation == freezed
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation?,
    ));
  }

  @override
  $AccommodationCopyWith<$Res>? get accommodation {
    if (_value.accommodation == null) {
      return null;
    }

    return $AccommodationCopyWith<$Res>(_value.accommodation!, (value) {
      return _then(_value.copyWith(accommodation: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$_BookingCopyWith(
          _$_Booking value, $Res Function(_$_Booking) then) =
      __$$_BookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      DateTime start,
      DateTime end,
      int total,
      String user_id,
      Accommodation? accommodation});

  @override
  $AccommodationCopyWith<$Res>? get accommodation;
}

/// @nodoc
class __$$_BookingCopyWithImpl<$Res> extends _$BookingCopyWithImpl<$Res>
    implements _$$_BookingCopyWith<$Res> {
  __$$_BookingCopyWithImpl(_$_Booking _value, $Res Function(_$_Booking) _then)
      : super(_value, (v) => _then(v as _$_Booking));

  @override
  _$_Booking get _value => super._value as _$_Booking;

  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? total = freezed,
    Object? user_id = freezed,
    Object? accommodation = freezed,
  }) {
    return _then(_$_Booking(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      accommodation: accommodation == freezed
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as Accommodation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Booking implements _Booking {
  const _$_Booking(
      {required this.id,
      required this.start,
      required this.end,
      required this.total,
      required this.user_id,
      this.accommodation});

  factory _$_Booking.fromJson(Map<String, dynamic> json) =>
      _$$_BookingFromJson(json);

  @override
  final int id;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final int total;
  @override
  final String user_id;
  @override
  final Accommodation? accommodation;

  @override
  String toString() {
    return 'Booking(id: $id, start: $start, end: $end, total: $total, user_id: $user_id, accommodation: $accommodation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Booking &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality()
                .equals(other.accommodation, accommodation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(user_id),
      const DeepCollectionEquality().hash(accommodation));

  @JsonKey(ignore: true)
  @override
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      __$$_BookingCopyWithImpl<_$_Booking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingToJson(this);
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {required final int id,
      required final DateTime start,
      required final DateTime end,
      required final int total,
      required final String user_id,
      final Accommodation? accommodation}) = _$_Booking;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$_Booking.fromJson;

  @override
  int get id;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  int get total;
  @override
  String get user_id;
  @override
  Accommodation? get accommodation;
  @override
  @JsonKey(ignore: true)
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}
