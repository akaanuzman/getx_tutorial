import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/core/base/base_singleton.dart';
import 'package:getx_tutorial/products/controllers/splash_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with BaseSingleton {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: constants.debugShowCheckedModeBanner,
          initialRoute: constants.initialRoute,
          supportedLocales: constants.supportedLocales,
          localizationsDelegates: constants.localizationsDelegates,
          theme: controller.theme,
          darkTheme: theme.themeDataDark,
          themeMode: ThemeMode.system,
          navigatorKey: constants.navigatorKey,
          getPages: routes.appRoutes,
        );
      },
    );
  }
}
