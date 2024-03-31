import 'package:flutter/material.dart';
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/data/repository/auth_repo.dart';
import 'package:microfinance/data/shared/shareperfer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends ChangeNotifier {
  String msg = '';

  Future<String> login(String username, String password) async {
    Authmodel responsemodel = await AuthRepo().login(username, password);
    if (responsemodel.resultCode == 'OK') {
      _shareprefer("id_users", responsemodel.idUsers.toString());
      _shareprefer("depart_id", responsemodel.departId.toString());
      _shareprefer("full_name", responsemodel.fullName.toString());
      _shareprefer("role_id", responsemodel.roleId.toString());
      _shareprefer("accessToken", responsemodel.accessToken.toString());
      _shareprefer("resultCode", responsemodel.resultCode.toString());

      ShareData.departId = responsemodel.departId.toString();
      ShareData.fullName = responsemodel.fullName.toString();
      ShareData.roleId = responsemodel.roleId.toString();
      ShareData.token = responsemodel.accessToken.toString();
      ShareData.userId = responsemodel.idUsers.toString();

      return responsemodel.roleId.toString();
    } else {
      msg = responsemodel.resultCode.toString();
      notifyListeners();
      return 'fail to login ';
    }
  }

  Future<void> _shareprefer(String key, String value) async {
    final prefer = await SharedPreferences.getInstance();
    prefer.setString(key, value);
  }
}
