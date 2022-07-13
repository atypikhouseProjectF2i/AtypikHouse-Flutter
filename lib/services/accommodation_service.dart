import 'package:atypik_house_flutter/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';
import '../models/accommodation.dart';

class AccommodationService {
  AccommodationService._();

  static final instance = AccommodationService._();

  late Dio _dio;

  static const _baseUrl = 'http://localhost:8000/api';

  // package à tester pour parsing: retrofit

  initWithToken(String token) {
    _dio = Dio(BaseOptions(headers: {
      'Authorization': 'Bearer ${AuthService.instance.token}',
    }, baseUrl: _baseUrl));
  }

  Future<List<Accommodation>> getAccommodations() async {
    final response = await _dio.get('/accommodations');
    final hebergements =
        // response.data!.map((d) => Accommodation.fromJson(d)).toList();
        response.data!.map((d) {
      print(response.data);
      log(response.data);
      debugPrint(response.data);

      return Accommodation.fromJson(d);
    }).toList();

    return hebergements;
  }
}
