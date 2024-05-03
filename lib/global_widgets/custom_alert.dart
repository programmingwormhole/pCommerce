import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'custom_button.dart';

class CustomAlert extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final void Function()? onButtonTap;
  final String? secondButtonText;
  final void Function()? onSecondButtonTap;
  final String image;
  final bool? isAnimated;

  const CustomAlert({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    this.onButtonTap,
    required this.image,
    this.isAnimated,
    this.secondButtonText,
    this.onSecondButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AlertDialog(
      // backgroundColor: Colors.white,
      content: SizedBox(
        height: size.height * .51,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child:
              isAnimated == true ? Lottie.asset(image) : Image.asset(image),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).canvasColor.withOpacity(.5),
                fontSize: 16,
              ),
            ),
            CustomButton(
              title: buttonText,
              onTap: onButtonTap ?? () => Get.back(),
            ),

            if(secondButtonText != null)...[
              const SizedBox(
                height: 5,
              ),
              CustomButton(
                title: secondButtonText!,
                onTap: onSecondButtonTap ?? () => Get.back(),
                isSoft: true,
                softValue: .2,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
