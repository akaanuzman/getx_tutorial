import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/extensions/ui_extensions.dart';
import 'package:getx_tutorial/products/controllers/main_controller.dart';

class HomeView extends StatelessWidget {
  final mainController = Get.put(MainController());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _appBarLeading,
        title: _appBarTitle,
        actions: [_changeTitleButton],
      ),
      body: _body(context),
      floatingActionButton: _fabButton,
    );
  }

  IconButton get _appBarLeading {
    return IconButton(
      onPressed: () => mainController.removeLastCharFromTitle,
      icon: const Icon(Icons.delete),
    );
  }

  Obx get _appBarTitle {
    return Obx(() {
      String title = mainController.title.string;
      return Text(title);
    });
  }

  IconButton get _changeTitleButton {
    return IconButton(
      onPressed: () => mainController.changeTitle,
      icon: const Icon(Icons.change_circle_rounded),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: context.mainAxisACenter,
      children: [
        _counterText(context),
        context.emptySizedHeightBox3x,
        _deincreaseButton
      ],
    );
  }

  Center _counterText(BuildContext context) {
    return Center(
      child: Obx(
        () {
          String counter = "Counter: ${mainController.counter}";
          return Text(
            counter,
            style: context.textTheme.headline6,
          );
        },
      ),
    );
  }

  ElevatedButton get _deincreaseButton {
    String label = "Deincrease counter";
    return ElevatedButton(
      onPressed: () => mainController.deincreaseCounter,
      child: Text(label),
    );
  }

  FloatingActionButton get _fabButton {
    return FloatingActionButton(
      onPressed: () => mainController.increaseCounter,
      child: const Icon(Icons.add),
    );
  }
}
