import 'package:get/get.dart';
import 'package:getx_tutorial/products/views/splash_view.dart';
import '../../products/views/theme_view.dart';

class AppRoutes {
  static AppRoutes? _instance;
  static AppRoutes get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = AppRoutes.init();
      return _instance!;
    }
  }

  AppRoutes.init();

  final List<String> _routeNames = [
    "/splash",
    "/theme",
  ];

  List<GetPage> get appRoutes => [
        GetPage(
          name: _routeNames[0],
          page: () => SplashView(),
        ),
        GetPage(
          name: _routeNames[1],
          page: () => ThemeView(),
        ),
      ];
}
