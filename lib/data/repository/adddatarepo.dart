import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microfinance/util/Appcontants.dart';

class AddDataRepo {
  Future<bool> addCustomer(Map<String, dynamic> data) async {
    try {
      final resp =
          await http.post(Uri.parse('${Appconstants.registerCustomer}/add'),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode(data));
      if (resp.statusCode == 200) {
        return true;
      } else {
        throw Exception('fail == status code ==>> ${resp.statusCode}');
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
