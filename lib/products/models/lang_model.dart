import 'package:get/get.dart';

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
    Get.deviceLocale?.languageCode == langCode
        ? isSelected = true.obs
        : isSelected = false.obs;
  }
}
