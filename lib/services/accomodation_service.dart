import 'package:atypik_house_flutter/services/auth_service.dart';
import 'package:dio/dio.dart';

import '../models/accomodation.dart';

class AccomodationService {
  AccomodationService._();

  static final instance = AccomodationService._();

  late Dio _dio;

  static const _baseUrl = 'http://localhost:8000/api';

  // package à tester pour parsing: retrofit

  initWithToken(String token) {
    _dio = Dio(BaseOptions(headers: {
      'Authorization': 'Bearer ${AuthService.instance.token}',
    }, baseUrl: _baseUrl));
  }

  Future<List<Accomodation>> getAccomodations() async {
    final response = await _dio.get('/accomodations');
    final hebergements =
        response.data!.map((d) => Accomodation.fromJson(d)).toList();
    return hebergements;
  }
}
