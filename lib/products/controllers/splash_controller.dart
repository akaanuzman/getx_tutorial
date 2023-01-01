import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../core/theme/my_theme.dart';

class SplashController extends GetxController {
  RxBool status = Get.isDarkMode.obs;
  final box = GetStorage();
  ThemeData get theme => status.value
      ? MyTheme.instance.themeDataDark
      : MyTheme.instance.themeDataLigth;
  Locale get appLocale {
    if (box.read("appLang") != null) {
      String result = box.read("appLang");
      List<String> localeCodes = result.split("_");
      return Locale(localeCodes.first, localeCodes.last);
    }
    return Get.deviceLocale!;
  }

  Future<void> get loadSplash async {
    final bool result = await box.read("themeMode");
    status.value = result;
  }

  get changeTheme async {
    status.value = !status.value;
    await box.write("themeMode", status.value);
    Get.changeTheme(theme);
  }
}
