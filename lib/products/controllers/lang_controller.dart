import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/products/models/lang_model.dart';

class LangController extends GetxController {
  final box = GetStorage();
  final List<LangModel> langItems = [
    LangModel(
      key: "turkish".tr,
      langCode: "tr",
      countryCode: "TR",
      isSelected: false.obs,
    ),
    LangModel(
      key: "english".tr,
      langCode: "en",
      countryCode: "US",
      isSelected: false.obs,
    )
  ];

  changeLang(LangModel model) async {
    Locale newLocale = Locale(model.langCode, model.countryCode);
    if (!model.isSelected.value) {
      for (var element in langItems) {
        if (element.isSelected.value) {
          element.isSelected.value = false;
        }
      }
      model.isSelected.value = !model.isSelected.value;
      Get.updateLocale(newLocale);
      await box.write("appLang", newLocale.toString());
      Get.back();
    } else {}
  }
}
