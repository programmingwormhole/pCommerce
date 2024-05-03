import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pCommerce/controllers/splash_controller.dart';
import 'package:pCommerce/utils/assets_manager.dart';
import 'package:pCommerce/utils/colors.dart';

import '../../utils/config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(SplashController());

    return Scaffold(
      body: Container(
        color: AppColors.primary,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5000),
                      child: Lottie.asset(AnimationManager.splashLoading)),
                ),
              ),
              const Text(
                AppConfig.appName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
