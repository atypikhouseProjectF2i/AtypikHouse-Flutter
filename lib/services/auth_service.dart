import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'accomodation_service.dart';

class AuthService {
  AuthService._();

  static final instance = AuthService._();

  final _dio = Dio();
  final _storage = const FlutterSecureStorage();

  static const _jwtKey = 'JWT_TOKEN_KEY';

  Future<bool> login({required String login, required String password}) async {
    try {
      final result = await _dio.post('http://localhost:8000/api/login',
          data: {'username': login, 'password': password});
      final token = result.data['token'] as String;
      _storage.write(key: _jwtKey, value: token);

      AccomodationService.instance.initWithToken(token);

      return true;
    } catch (e) {
      print(e);
    }

    return false;
  }

  Future<String?> get token {
    return _storage.read(key: _jwtKey);
  }
}
