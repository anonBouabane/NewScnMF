import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microfinance/data/model/GetInfocustoModel.dart';
import 'package:microfinance/data/shared/shareperfer.dart';
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
        body: jsonEncode(<String, String>{"accesstoken": ShareData.token}),
      );

      if (response.statusCode == 200) {
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
        throw Exception(Error());
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
