import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:microfinance/data/model/getInfocusto_model.dart';
import 'package:microfinance/data/repository/getdatarepo.dart';
import 'package:microfinance/data/shared/shareperfer.dart';

class Getalldatacontroller extends ChangeNotifier {
  bool isloading = false;
  final getdatarepo = Getalldatarepo();
  List<Getalldatamodel> _getalldata = [];
  List<Getalldatamodel> get getalldata => _getalldata;

  Future<void> getAlldatacusto() async {
    isloading = true;
    notifyListeners();
    try {
      final List<Getalldatamodel> response =
          await getdatarepo.getAllData(ShareData.token);
      _getalldata = response;
    } catch (e) {
      print('error ===>> ${e}');
      throw e.toString();
    } finally {
      isloading = false;
      notifyListeners();
    }
  }

  void getuserdataBYID(String id, String token) async {
    isloading = true;
    notifyListeners();
    final data = {}.obs;
    try {
      data.value = await getdatarepo.getuserdataBYID(id, token);
    } catch (e) {
      print('error${e}');
      throw e.toString();
    } finally {
      isloading = false;
      notifyListeners();
    }
  }

  Future<void> refreshdata() async {
    await getAlldatacusto();
  }
}
