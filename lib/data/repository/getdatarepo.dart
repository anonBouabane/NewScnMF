import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microfinance/data/model/getInfocusto_model.dart';
import 'package:microfinance/util/Appcontants.dart';

class Getalldatarepo {
  Future<List<Getalldatamodel>> getAllData(String token) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('${Appconstants.getallinfocusto.toString()}/get'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(<String, String>{"accesstoken": token}),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = jsonDecode(response.body);
        final List<Getalldatamodel> dataList = jsonList
            .map((e) => Getalldatamodel(
                customerId: e['customer_id'],
                whatsAppNumber: e['whats_app_number'],
                customerJob: e['customer_job'],
                fullName: e['full_name'],
                profilePicture: e['profile_picture'],
                age: e['age'],
                phoneNumber: e['phone_number']))
            .toList();
        return dataList;
      } else {
        throw Exception('error');
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Map<String, dynamic>> getuserdataBYID(String id, String token) async {
    Map<String, dynamic> data = {'customer_id': id};
    try {
      final response = await http.post(
          Uri.parse('${Appconstants.getuserbyid}/id'),
          body: jsonEncode(data),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token'
          });
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print('fail status == >> ${response.statusCode}');
        throw Exception('fail to request api ');
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
