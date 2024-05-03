import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // Global
  RxBool isSecured = RxBool(true);
  RxBool isAgree = RxBool(false);

  // keys
  final loginKey = GlobalKey<FormState>();
  final registerKey = GlobalKey<FormState>();
  final forgotKey = GlobalKey<FormState>();
  final resetKey = GlobalKey<FormState>();

  RxString gender = RxString('male'.tr);
  RxString selectedCountry = RxString('+880');
  RxString selectedCountryFlag = RxString("🇧🇩");

  RxString code1 = RxString('');
  RxString code2 = RxString('');
  RxString code3 = RxString('');
  RxString code4 = RxString('');
  RxString code5 = RxString('');
  RxString code6 = RxString('');

  Timer? timer;
  RxInt second = 30.obs;

  startTimer () {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      if (second.value > 0) {
        second.value--;
        update();
      } else {
        timer!.cancel();
      }
    });
  }

  resetTimer () {
    second.value = 30;
    update();
    startTimer();
  }

  @override
  onClose () {
    super.onClose();
    timer!.cancel();
  }

}