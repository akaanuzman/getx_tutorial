import 'package:get/get.dart';

import '../../products/views/home_view.dart';

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

  List<GetPage> get appRoutes => [
        GetPage(
          name: "/home",
          page: () => const HomeView(),
        ),
      ];
}
