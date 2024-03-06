import 'package:flutter/material.dart';
import 'package:microfinance/helper/Routehelper.dart';
import 'package:microfinance/util/Appcontants.dart';
import 'package:microfinance/view/screen/auth/signin_screen.dart';

final Map<String, WidgetBuilder> map = {
  '/signinscreen': (BuildContext context) => const SignInScreen(),
};
String? initial;
void main() {
  initial = RouteHelper.initial;
  runApp(const MyApp());
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
