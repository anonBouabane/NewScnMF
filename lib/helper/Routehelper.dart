import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:microfinance/view/screen/auth/signin_screen.dart';

class RouteHelper {
  static const String initial = '/signinscreen';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SignInScreen())
  ];
}
