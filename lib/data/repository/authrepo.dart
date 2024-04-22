// ignore: unused_import
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/util/Appcontants.dart';

class AuthRepo {
  Future<Authmodel> login(String username, String password) async {
    try {
      final http.Response response = await http.post(
          Uri.parse('${Appconstants.LOGIN_URI}/login'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
              <String, String>{"username": username, "password": password}));
      if (response.statusCode == 200 || response.statusCode == 400) {
        return Authmodel.fromJson(json.decode(response.body));
      } else {
        throw Exception('fail');
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
