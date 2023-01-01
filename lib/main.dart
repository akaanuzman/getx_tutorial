import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/base/base_singleton.dart';
import 'features/langs/langs.dart';
import 'products/controllers/splash_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with BaseSingleton {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashController());
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: constants.debugShowCheckedModeBanner,
          initialRoute: constants.initialRoute,
          supportedLocales: constants.supportedLocales,
          localizationsDelegates: constants.localizationsDelegates,
          theme: splashController.theme,
          darkTheme: theme.themeDataDark,
          navigatorKey: constants.navigatorKey,
          getPages: routes.appRoutes,
          locale: splashController.appLocale,
          fallbackLocale: constants.fallbackLocale,
          translations: Langs(),
        );
      },
    );
  }
}
