import 'package:get/get.dart';

class MainController extends GetxController {
  final RxInt counter = 0.obs;

  get increaseCounter {
    counter(counter.value + 1);
  }
}
