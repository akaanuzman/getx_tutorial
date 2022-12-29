import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/extensions/ui_extensions.dart';
import 'package:getx_tutorial/products/controllers/splash_controller.dart';

class ThemeView extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: context.mainAxisACenter,
          children: [
            Text(
              "Change Theme",
              style: context.textTheme.subtitle1!
                  .copyWith(fontWeight: context.fw700),
            ),
            Obx(
              () {
                return Switch(
                  value: controller.status.value,
                  onChanged: (val) => controller.changeTheme,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
