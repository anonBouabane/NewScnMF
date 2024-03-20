import 'package:flutter/material.dart';
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/data/repository/auth_repo.dart';

class AuthController extends ChangeNotifier {
  Future<String> login(String username, String password) async {
    Authmodel responsemodel = await AuthRepo().login(username, password);
    if (responsemodel.resultCode == 'OK') {
      return '${responsemodel.roleId}' ;
    } else {
      return 'fail to login ';
    }
  }
}
