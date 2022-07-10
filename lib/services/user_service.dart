import 'dart:convert';

import 'package:atypik_house_flutter/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  //recuperer les utilisateurs
  Future<List<dynamic>> getUsers() async {
    Uri url = Uri.parse('http://localhost:8000/api/me');
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);
    return data['results'].map((e) => User.fromJSON(e)).toList();
  }
}
