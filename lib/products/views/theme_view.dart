import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/base/base_singleton.dart';
import 'package:getx_tutorial/core/extensions/ui_extensions.dart';
import 'package:getx_tutorial/features/langs/langs.dart';
import 'package:getx_tutorial/products/controllers/lang_controller.dart';
import 'package:getx_tutorial/products/controllers/splash_controller.dart';
import 'package:getx_tutorial/products/models/lang_model.dart';

class ThemeView extends StatelessWidget with BaseSingleton {
  final SplashController _splashCtrl = Get.put(SplashController());
  final LangController _lngCtrl = Get.put(LangController());

  ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appBarTitle".tr),
        actions: [_changeLangButton(context)],
      ),
      body: _body(context),
    );
  }

  IconButton _changeLangButton(BuildContext context) {
    return IconButton(
      onPressed: () => _changeLangShowModalBottomSheet(context),
      icon: const Icon(Icons.translate),
    );
  }

  _changeLangShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        int itemCount = Langs().keys.length;
        return ListView.separated(
          padding: context.padding2x,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            LangModel item = _lngCtrl.langItems[index];
            return Obx(() => _langItem(item));
          },
          separatorBuilder: (_, __) => context.emptySizedHeightBox2x,
        );
      },
    );
  }

  Card _langItem(LangModel item) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.language),
        title: Text(item.key),
        trailing: Checkbox(
          value: item.isSelected.value,
          onChanged: (val) => _lngCtrl.changeLang(item),
        ),
      ),
    );
  }

  Center _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: context.mainAxisACenter,
        children: [
          _changeThemeButton(context),
          Text("hello".tr),
        ],
      ),
    );
  }

  Row _changeThemeButton(BuildContext context) {
    return Row(
      mainAxisAlignment: context.mainAxisACenter,
      children: [
        _changeTheme(context),
        _toggleButton,
      ],
    );
  }

  Text _changeTheme(BuildContext context) {
    return Text(
      "changeTheme".tr,
      style: context.textTheme.subtitle1!.copyWith(fontWeight: context.fw700),
    );
  }

  Obx get _toggleButton {
    return Obx(
      () => Switch(
        value: _splashCtrl.status.value,
        onChanged: (val) => _splashCtrl.changeTheme,
      ),
    );
  }
}
