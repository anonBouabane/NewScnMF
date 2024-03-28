// ignore: unused_import
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microfinance/data/model/GetInfocustoModel.dart';
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/data/shared/shareperfer.dart';
import 'package:microfinance/util/Appcontants.dart';

class AuthRepo {
  Future<Authmodel> login(String username, String password) async {
    try {
      final http.Response response = await http.post(
          Uri.parse('${Appconstants.LOGIN_URI.toString()}/login'),
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

  Future<List<Getalldatamodel>> getAllData(String token) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('${Appconstants.getallinfocusto.toString()}/get'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(<String, String>{"accesstoken":ShareData.token}),
      );

      if (response.statusCode == 200) {
        print('Response body : ${response.body}');
        final List<dynamic> jsonList = jsonDecode(response.body);
        final List<Getalldatamodel> dataList = jsonList
            .map((e) => Getalldatamodel(
                fullName: e['first_name'],
                profilePicture: e['profile_picture'],
                age: e['age'],
                phoneNumber: e['phone_number']))
            .toList();
        return dataList;
      } else {
        print(response.statusCode);
        throw Exception(Error());
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
