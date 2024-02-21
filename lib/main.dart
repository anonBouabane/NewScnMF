import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:microfinance/helper/Routehelper.dart';
import 'package:microfinance/util/Appcontants.dart';
import 'package:microfinance/view/screen/dashboard/Marketing_screen.dart';

final Map<String, WidgetBuilder> map = {
  '/Marketing': (BuildContext context) => Marketing(),
};
String? initial;
void main() {
  if (GetPlatform.isMobile) {
    HttpOverrides.global = new MyHttpOverrides();
  }
  initial = RouteHelper.initial;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Appconstants.APPNAME,
      routes: map,
      debugShowCheckedModeBanner: false,
      initialRoute: initial,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
