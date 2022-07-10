import 'package:atypik_house_flutter/models/user.dart';
import 'package:atypik_house_flutter/services/auth_service.dart';
import 'package:dio/dio.dart';

class UserService {
  UserService._();

  static final instance = UserService._();

  late Dio _dio;

  static const _baseUrl = 'http://localhost:8000/api';

  // package à tester pour parsing: retrofit

  initWithToken(String token) {
    _dio = Dio(BaseOptions(headers: {
      'Authorization': 'Bearer ${AuthService.instance.token}',
    }, baseUrl: _baseUrl));
  }

  //recuperer les utilisateurs
  Future<List<User>> getUsers() async {
    final response = await _dio.get<List>('/users');
    final users = response.data!.map((d) => User.fromJson(d)).toList();
    return users;
  }
}
