import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/screen/bindings/screen_binding.dart';
import '../modules/screen/views/screen_view.dart';
import '../modules/splash/bindings/splash_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => HomeView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SCREEN,
      page: () => const ScreenView(),
      binding: ScreenBinding(),
    ),
  ];
}
