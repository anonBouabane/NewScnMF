import 'package:flutter/material.dart';
import 'package:microfinance/data/model/GetInfocustoModel.dart';
import 'package:microfinance/data/repository/getdatarepo.dart';
import 'package:microfinance/data/shared/shareperfer.dart';

class Getalldatacontroller extends ChangeNotifier {
  bool isloading = false;
  final getdatarepo = Getalldatarepo();
  List<Getalldatamodel> _getalldata = [];
  List<Getalldatamodel> get getalldata => _getalldata;
  Getalldatacontroller() {
    getAlldatacusto();
    notifyListeners();
  }

  Future<void> getAlldatacusto() async {
    isloading = true;
    notifyListeners();
    try {
      final List<Getalldatamodel> response =
          await getdatarepo.getAllData(ShareData.token);
      _getalldata = response;
    } catch (e) {
      print("Error :$e ");
    } finally {
      isloading = false;
      notifyListeners();
    }
  }
  refreshdata(){
    getAlldatacusto();
    notifyListeners();
  }
 
}
