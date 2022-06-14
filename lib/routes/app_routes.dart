import 'package:medusa_ecommerce/presentation/catalog_2_screen/catalog_2_screen.dart';
import 'package:medusa_ecommerce/presentation/catalog_2_screen/binding/catalog_2_binding.dart';
import 'package:medusa_ecommerce/presentation/catalog_1_screen/catalog_1_screen.dart';
import 'package:medusa_ecommerce/presentation/catalog_1_screen/binding/catalog_1_binding.dart';
import 'package:medusa_ecommerce/presentation/product_card_screen/product_card_screen.dart';
import 'package:medusa_ecommerce/presentation/product_card_screen/binding/product_card_binding.dart';
import 'package:medusa_ecommerce/presentation/splash_screen/splash_screen.dart';
import 'package:medusa_ecommerce/presentation/splash_screen/binding/splash_binding.dart';
import 'package:medusa_ecommerce/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:medusa_ecommerce/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String catalog2Screen = '/catalog_2_screen';

  static String catalog1Screen = '/catalog_1_screen';

  static String productCardScreen = '/product_card_screen';

  static String splashScreen = '/splash_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: catalog2Screen,
      page: () => Catalog2Screen(),
      bindings: [
        Catalog2Binding(),
      ],
    ),
    GetPage(
      name: catalog1Screen,
      page: () => Catalog1Screen(),
      bindings: [
        Catalog1Binding(),
      ],
    ),
    GetPage(
      name: productCardScreen,
      page: () => ProductCardScreen(),
      bindings: [
        ProductCardBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
