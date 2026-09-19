import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  void increment() {
    counter.value++;
    print(counter.value);
    //condition
    if (counter > 10) {
      counter.value = 10;
      Get.snackbar(
        "Warning",
        "Counter cannot be greater than 10",
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  void decrement() {
    counter.value--;
    print(counter.value);
    if (counter < 1) {
      counter.value = 1;
      Get.snackbar(
        "Warning",
        "Counter cannot be less than 1",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
