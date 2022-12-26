import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/base/base_singleton.dart';

import 'products/views/home_view.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget with BaseSingleton {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: constants.debugShowCheckedModeBanner,
      initialRoute: constants.initialRoute,
      getPages: routes.appRoutes,
    );
  }
}
