import '/core/app_export.dart';
import 'package:medusa_ecommerce/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController with StateMixin<dynamic> {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Get.toNamed(AppRoutes.catalog1Screen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
