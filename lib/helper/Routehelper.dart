import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:microfinance/view/screen/dashboard/Loanscreen.dart';

class RouteHelper {
  static const String initial = '/Marketing';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const LoanScreen())
  ];
}
