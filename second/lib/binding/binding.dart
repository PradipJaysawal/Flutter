import 'package:get/get.dart';
import 'package:second/controller/controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CounterController>(CounterController(), permanent: true);
  }
}
