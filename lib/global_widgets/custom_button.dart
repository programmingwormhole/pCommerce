import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pCommerce/utils/assets_manager.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool? isSoft;
  final bool? isLoading;
  final double? softValue;

  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.isLoading,
    this.isSoft,
    this.softValue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: isSoft == true
              ? AppColors.primary.withOpacity(softValue ?? .5)
              : AppColors.primary,
          borderRadius: BorderRadius.circular(6000),
        ),
        child: Center(
          child: isLoading == true ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              text('${'please_wait'.tr}...', isSoft)
            ],
          ) : text(title, isSoft),
        ),
      ),
    );
  }
}

Widget text(String title, bool? isSoft) => Text(
      title,
      style: TextStyle(
        color: isSoft == true ? Colors.white : Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
