import 'package:get/get.dart';
import 'package:microfinance/view/screen/dashboard/Marketing_screen.dart';

class RouteHelper {
  static const String initial = '/Marketing';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => Marketing())
  ];
}
