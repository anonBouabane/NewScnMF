import 'package:flutter/material.dart';
import 'package:microfinance/controller/authcontroller.dart';
import 'package:microfinance/helper/Routehelper.dart';
import 'package:microfinance/util/Appcontants.dart';
import 'package:microfinance/view/screen/Informationcusto/information_custo.dart';
import 'package:microfinance/view/screen/auth/signin_screen.dart';
import 'package:microfinance/view/screen/dashboard/Loanscreen.dart';
import 'package:microfinance/view/screen/dashboard/Marketing_screen.dart';
import 'package:provider/provider.dart';

final Map<String, WidgetBuilder> map = {
  '/signinscreen': (BuildContext context) => const SignInScreen(),
  '/marketing': (BuildContext context) => const Marketing(),
  '/loan': (BuildContext context) => const LoanScreen(),
  'information_custo': (BuildContext context) => const InfoCustoScreen(),
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
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthController())],
      child: MaterialApp(
        title: Appconstants.APPNAME,
        routes: map,
        debugShowCheckedModeBanner: false,
        initialRoute: initial,
      ),
    );
  }
}
