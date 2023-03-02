
import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/view/sing_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';

import '../consts/consts_app.dart';
import '../pages/auth/view/sing_in_screen.dart';
import '../pages/splash/splash_screen.dart';

abstract class AppPages{
  static final pages = <GetPage>[
    GetPage(name: ConstRoutes.splashRoute, page: () => const SplashScreen()),
    GetPage(name: ConstRoutes.signInRoute, page: () => SingInScreen()),
    GetPage(name: ConstRoutes.signUpRoute, page: () => SingUpScreen()),
    GetPage(name: ConstRoutes.baseRoute, page: () => const BaseScreen()),
  ];
}