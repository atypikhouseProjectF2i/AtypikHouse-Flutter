// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accommodation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
mixin _$Accommodation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res>;
  $Res call({int id, String name, int price});
}

/// @nodoc
class _$AccommodationCopyWithImpl<$Res>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  final Accommodation _value;
  // ignore: unused_field
  final $Res Function(Accommodation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AccommodationCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$$_AccommodationCopyWith(
          _$_Accommodation value, $Res Function(_$_Accommodation) then) =
      __$$_AccommodationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int price});
}

/// @nodoc
class __$$_AccommodationCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res>
    implements _$$_AccommodationCopyWith<$Res> {
  __$$_AccommodationCopyWithImpl(
      _$_Accommodation _value, $Res Function(_$_Accommodation) _then)
      : super(_value, (v) => _then(v as _$_Accommodation));

  @override
  _$_Accommodation get _value => super._value as _$_Accommodation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Accommodation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accommodation implements _Accommodation {
  const _$_Accommodation(
      {required this.id, required this.name, required this.price});

  factory _$_Accommodation.fromJson(Map<String, dynamic> json) =>
      _$$_AccommodationFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;

  @override
  String toString() {
    return 'Accommodation(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accommodation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_AccommodationCopyWith<_$_Accommodation> get copyWith =>
      __$$_AccommodationCopyWithImpl<_$_Accommodation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccommodationToJson(this);
  }
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {required final int id,
      required final String name,
      required final int price}) = _$_Accommodation;

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$_Accommodation.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_AccommodationCopyWith<_$_Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}
