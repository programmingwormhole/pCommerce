import 'dart:async';

import 'package:get/get.dart';
import 'package:pCommerce/routes/route_names.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteNames.onboard);
    });
  }
}