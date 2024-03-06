import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:microfinance/view/screen/auth/signin_screen.dart';
import 'package:microfinance/view/screen/dashboard/Loanscreen.dart';
import 'package:microfinance/view/screen/dashboard/Marketing_screen.dart';

class RouteHelper {
  static const String initial = '/signinscreen';
  static const String dashboad = '/dashboad';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SignInScreen()),
    GetPage(name: dashboad, page: ()=> const Marketing()),
    GetPage(name: dashboad, page: ()=> const LoanScreen()),
  ];
}
