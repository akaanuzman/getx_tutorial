import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/products/controllers/main_controller.dart';

class HomeView extends StatelessWidget {
  final mainController = Get.put(MainController());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () {
            return Text(
              "Counter: ${mainController.counter}",
              style: context.textTheme.headline6,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(mainController.counter);
          mainController.increaseCounter;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
