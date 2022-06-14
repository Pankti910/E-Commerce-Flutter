import '../controller/catalog_1_controller.dart';
import 'package:get/get.dart';

class Catalog1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Catalog1Controller());
  }
}
