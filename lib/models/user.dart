import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

// class User {
//   // constructeur
//   User();

//   // propriétés privées
//   String? _id, _name, _firstname, _email, _password, _phone;

//   //getters / setters
//   String? get id => _id;
//   String? get name => _name;
//   String? get firstname => _firstname;
//   String? get email => _email;
//   String? get password => _password;
//   String? get phone => _phone;

//   set id(String? value) => _id = value;
//   set name(String? value) => _name = value;
//   set firstname(String? value) => _firstname = value;
//   set email(String? value) => _email = value;
//   set password(String? value) => _password = value;
//   set phone(String? value) => _phone = value;

//   factory User.fromJSON(json) {
//     User user = User();
//     user._id = json['id'];
//     user._name = json['name'];
//     user._firstname = json['firstname'];
//     user._email = json['email'];
//     user._password = json['password'];
//     user._phone = json['phone'];

//     return user;
//   }
// }

@freezed
class User with _$User {
  const factory User(
      {@JsonKey(name: "@id") required String id,
      required String name,
      required String firstname,
      required String email}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
