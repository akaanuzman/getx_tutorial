import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/extensions/ui_extensions.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: context.mainAxisACenter,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar("title", "message", backgroundColor: Colors.white);
              },
              child: const Text("snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  const AlertDialog(
                    title: Text("data"),
                  ),
                );
              },
              child: const Text("dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog();
              },
              child: const Text("default dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
