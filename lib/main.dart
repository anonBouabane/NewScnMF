import 'package:flutter/material.dart';
import 'package:microfinance/controller/authcontroller.dart';
import 'package:microfinance/controller/getdatacontroller.dart';
import 'package:microfinance/helper/Routehelper.dart';
import 'package:microfinance/util/Appcontants.dart';
import 'package:microfinance/view/screen/Informationcusto/InfoDetailCusto.dart';
import 'package:microfinance/view/screen/Informationcusto/information_custo.dart';
import 'package:microfinance/view/screen/auth/signin_screen.dart';
import 'package:microfinance/view/screen/dashboard/Loanscreen.dart';
import 'package:microfinance/view/screen/dashboard/Marketing_screen.dart';
import 'package:provider/provider.dart';

final Map<String, WidgetBuilder> map = {
  '/signinscreen': (_) => const SignInScreen(),
  '/marketing': (_) => const Marketing(),
  '/loan': (_) => const LoanScreen(),
  'information_custo': (_) => const InfoCustoScreen(),
  'infodetailcusto': (_) => const DetailInfoCusto(),
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
      providers: [ChangeNotifierProvider(create: (_) => AuthController()),
      ChangeNotifierProvider(create: (_)=>Getalldatacontroller())],
      child: MaterialApp(
        title: Appconstants.APPNAME,
        routes: map,
        debugShowCheckedModeBanner: false,
        initialRoute: initial,
      ),
    );
  }
}
