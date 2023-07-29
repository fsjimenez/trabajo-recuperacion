import 'package:get/get.dart';
import 'package:practicas/pages/carnet/carnet_controller.dart';

class CarnetBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarnetController>(() => CarnetController());
  }
}
