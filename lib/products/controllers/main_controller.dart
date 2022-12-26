import 'package:get/get.dart';

class MainController extends GetxController {
  final RxString title = "data".obs;
  final RxInt counter = 0.obs;

  get changeTitle {
    title(title + ".");
  }

  get removeLastCharFromTitle {
    if (title.string.isNotEmpty) {
      title(title.string.substring(0, title.string.length - 1));
    }
  }

  get increaseCounter {
    counter(counter.value + 1);
  }

  get deincreaseCounter {
    counter(counter.value - 1);
  }
}
