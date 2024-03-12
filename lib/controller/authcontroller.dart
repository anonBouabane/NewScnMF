import 'package:flutter/material.dart';
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/data/repository/auth_repo.dart';

class AuthController extends ChangeNotifier {
  Future<bool> login(String username, String password) async {
    Authmodel resp = await AuthRepo().login(username, password);
    if (resp.resultCode == 'ok') {
      return true;
    } else {
      return false;
    }
  }
}
