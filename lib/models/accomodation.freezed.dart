// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accomodation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Accomodation _$AccomodationFromJson(Map<String, dynamic> json) {
  return _Accomodation.fromJson(json);
}

/// @nodoc
mixin _$Accomodation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccomodationCopyWith<Accomodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccomodationCopyWith<$Res> {
  factory $AccomodationCopyWith(
          Accomodation value, $Res Function(Accomodation) then) =
      _$AccomodationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String firstname,
      String email,
      String password});
}

/// @nodoc
class _$AccomodationCopyWithImpl<$Res> implements $AccomodationCopyWith<$Res> {
  _$AccomodationCopyWithImpl(this._value, this._then);

  final Accomodation _value;
  // ignore: unused_field
  final $Res Function(Accomodation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? firstname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccomodationCopyWith<$Res>
    implements $AccomodationCopyWith<$Res> {
  factory _$$_AccomodationCopyWith(
          _$_Accomodation value, $Res Function(_$_Accomodation) then) =
      __$$_AccomodationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String firstname,
      String email,
      String password});
}

/// @nodoc
class __$$_AccomodationCopyWithImpl<$Res>
    extends _$AccomodationCopyWithImpl<$Res>
    implements _$$_AccomodationCopyWith<$Res> {
  __$$_AccomodationCopyWithImpl(
      _$_Accomodation _value, $Res Function(_$_Accomodation) _then)
      : super(_value, (v) => _then(v as _$_Accomodation));

  @override
  _$_Accomodation get _value => super._value as _$_Accomodation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? firstname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_Accomodation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accomodation implements _Accomodation {
  const _$_Accomodation(
      {required this.id,
      required this.name,
      required this.firstname,
      required this.email,
      required this.password});

  factory _$_Accomodation.fromJson(Map<String, dynamic> json) =>
      _$$_AccomodationFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String firstname;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Accomodation(id: $id, name: $name, firstname: $firstname, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accomodation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AccomodationCopyWith<_$_Accomodation> get copyWith =>
      __$$_AccomodationCopyWithImpl<_$_Accomodation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccomodationToJson(this);
  }
}

abstract class _Accomodation implements Accomodation {
  const factory _Accomodation(
      {required final String id,
      required final String name,
      required final String firstname,
      required final String email,
      required final String password}) = _$_Accomodation;

  factory _Accomodation.fromJson(Map<String, dynamic> json) =
      _$_Accomodation.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get firstname;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AccomodationCopyWith<_$_Accomodation> get copyWith =>
      throw _privateConstructorUsedError;
}
