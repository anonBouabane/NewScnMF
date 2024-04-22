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
        throw Exception(Error());
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<Getalldatamodel>> getuserBYID(String token, String id) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('${Appconstants.getallinfocusto.toString()}/get'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(
            <String, String>{"accesstoken": token, "customer_id": id}),
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
        throw Exception(Error());
      }
    } catch (e) {
      print('error ===>> ${e}');
      throw e.toString();
    }
  }
}
