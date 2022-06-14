import '../controller/catalog_2_controller.dart';
import 'package:get/get.dart';

class Catalog2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Catalog2Controller());
  }
}
