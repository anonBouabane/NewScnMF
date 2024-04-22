import 'package:flutter/material.dart'; 
import 'package:microfinance/data/model/getInfocusto_model.dart';
import 'package:microfinance/data/repository/getdatarepo.dart';
import 'package:microfinance/data/shared/shareperfer.dart';

class Getalldatacontroller extends ChangeNotifier {
  bool isloading = false;
  final getdatarepo = Getalldatarepo();
  List<Getalldatamodel> _getalldata = [];
  List<Getalldatamodel> get getalldata => _getalldata;

  List<Getalldatamodel> _getuserByid = [];
  List<Getalldatamodel> get getuserByid => _getuserByid;

  Getalldatacontroller() {
    getAlldatacusto();
    getuserBYID('2');
  }

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

  Future<void> getuserBYID(String id) async {
    isloading = true;
    notifyListeners();
    try {
      final List<Getalldatamodel> response =
          await getdatarepo.getuserBYID(ShareData.token, id);
      _getuserByid = response;
    } catch (e) {
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
