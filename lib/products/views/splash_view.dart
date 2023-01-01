import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/products/controllers/splash_controller.dart';
import 'package:getx_tutorial/products/views/theme_view.dart';

class SplashView extends StatelessWidget {
  final SplashController _sctrl = Get.put(SplashController());

  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _sctrl.loadSplash,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return _body(context);
            default:
              return ThemeView();
          }
        },
      ),
    );
  }

  Center _body(BuildContext context) {
    return Center(
      child: Text(
        "splashTitle".tr,
        style: context.textTheme.headline6,
      ),
    );
  }
}
