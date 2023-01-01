import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class LangModel {
  final String key;
  final String langCode;
  final String countryCode;
  RxBool isSelected;

  LangModel({
    required this.key,
    required this.langCode,
    required this.countryCode,
    required this.isSelected,
  }) {
    final splashController = Get.put(SplashController());
    splashController.appLocale.languageCode == langCode
        ? isSelected = true.obs
        : isSelected = false.obs;
  }
}
