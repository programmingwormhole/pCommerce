import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pCommerce/routes/route_names.dart';
import 'package:pCommerce/views/onboard/widgets/section.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../global_widgets/custom_button.dart';
import '../../utils/assets_manager.dart';
import '../../utils/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                OnBoardSection(
                  image: ImageManager.mobile.path,
                  title: 'on_title_1'.tr,
                  subTitle: 'on_des_1'.tr,
                ),
                OnBoardSection(
                  image: ImageManager.mobile.path,
                  title: 'on_title_2'.tr,
                  subTitle: 'on_des_2'.tr,
                ),
                OnBoardSection(
                  image: ImageManager.mobile.path,
                  title: 'on_title_3'.tr,
                  subTitle: 'on_des_3'.tr,
                ),
              ],
            ),
            currentIndex == 2
                ? const SizedBox()
                : Positioned(
                    right: 0,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = 2;
                          });
                          controller.jumpToPage(2);
                        },
                        child: Text(
                          'skip'.tr,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentIndex == 0
                            ? const SizedBox(
                                height: 45,
                                width: 45,
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    currentIndex--;
                                  });
                                  controller.jumpToPage(currentIndex);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.primary,
                                        width: 2,
                                      )),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                        SmoothPageIndicator(
                          controller: controller, // PageController
                          count: 3,
                          effect: ScrollingDotsEffect(
                            dotHeight: 10,
                            activeDotColor: AppColors.primary,
                            dotColor: AppColors.primary.withOpacity(.2),
                          ),
                          onDotClicked: (index) {},
                        ),
                        InkWell(
                          onTap: currentIndex == 2
                              ? () {
                                  Get.offAllNamed(RouteNames.register);
                                }
                              : () {
                                  setState(() {
                                    currentIndex++;
                                  });
                                  controller.jumpToPage(currentIndex);
                                },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primary,
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
