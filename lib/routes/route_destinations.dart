import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pCommerce/routes/route_names.dart';
import 'package:pCommerce/views/auth/login/login.dart';
import 'package:pCommerce/views/auth/register/register.dart';
import 'package:pCommerce/views/home/home_screen.dart';
import 'package:pCommerce/views/onboard/onboard.dart';
import 'package:pCommerce/views/splash/splash_screen.dart';

class RouteDestinations {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.onboard,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteNames.register,
      page: () => const RegisterScreen(),
    ),
  ];
}
