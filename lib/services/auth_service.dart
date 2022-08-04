import 'package:atypik_house_flutter/models/accommodation.dart';
import 'package:atypik_house_flutter/models/booking.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer';
import 'accommodation_service.dart';

class AuthService {
  AuthService._();

  static final instance = AuthService._();

  final _dio = Dio();
  final _storage = const FlutterSecureStorage();

  static const _jwtKey = 'JWT_TOKEN_KEY';

  Future<bool> login({required String login, required String password}) async {
    try {
      final result = await _dio.post(
          'https://dsp-devo20-ecs-yl-am-ee.fr/api/public/api/login',
          data: {'username': login, 'password': password});
      final token = result.data['token'] as String;
      _storage.write(key: _jwtKey, value: token);

      UserService.instance.initWithToken(token);
      AccommodationService.instance.initWithToken(token);
      // fichier auth service dans la fonction login

      return true;
    } catch (e) {
      print(e);
    }

    return false;
  }

  Future<bool> logout() async {
    _storage.delete(key: _jwtKey);
    const token = "";
    UserService.instance.initWithToken(token);
    AccommodationService.instance.initWithToken(token);
    return true;
  }

  Future<String?> get token {
    return _storage.read(key: _jwtKey);
  }
}
