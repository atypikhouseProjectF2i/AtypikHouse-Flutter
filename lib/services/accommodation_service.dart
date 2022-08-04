import 'dart:convert';

import 'package:atypik_house_flutter/services/auth_service.dart';
import 'package:atypik_house_flutter/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';
import '../models/accommodation.dart';

class AccommodationService {
  AccommodationService._();

  static final instance = AccommodationService._();

  late Dio _dio;

  static const _baseUrl = 'https://dsp-devo20-ecs-yl-am-ee.fr/api/public/api';

  // package à tester pour parsing: retrofit

  initWithToken(String token) {
    _dio = Dio(BaseOptions(headers: {
      'Authorization': 'Bearer $token',
    }, baseUrl: _baseUrl, responseType: ResponseType.plain));
  }

  Future<List<Accommodation>> getAccommodations() async {
    final response = await _dio.get('/accommodations');

    var accommodations = jsonDecode(response.data)['hydra:member'] as List;

    //log(xx[0].toString());
    final hebergements =
        accommodations.map((d) => Accommodation.fromJson(d)).toList();

    return hebergements;
  }
}
