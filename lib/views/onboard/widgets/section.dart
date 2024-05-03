import 'package:flutter/material.dart';
import 'package:pCommerce/utils/colors.dart';

class OnBoardSection extends StatelessWidget {
  final String image;
  final String title;
  final String? subTitle;

  const OnBoardSection({
    super.key,
    required this.image,
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * .5,
          width: size.width,
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary),
              ),
              const SizedBox(
                height: 10,
              ),
              subTitle == null
                  ? const SizedBox()
                  : Text(
                      subTitle!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).canvasColor.withOpacity(.5),
                        fontSize: 14,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
