import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pCommerce/controllers/auth_controller.dart';
import 'package:pCommerce/global_widgets/custom_app_bar.dart';
import 'package:pCommerce/global_widgets/custom_field.dart';
import 'package:pCommerce/utils/assets_manager.dart';
import '../../../global_widgets/custom_button.dart';
import '../../../routes/route_names.dart';
import '../../../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      appBar: CustomAppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: controller.loginKey,
                  child: Column(
                    children: [
                      Text(
                        'sign_in'.tr,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'sign_in_ins'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:
                          Theme.of(context).canvasColor.withOpacity(.4),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          CustomField(
                            isRequired: true,
                            leading: SvgManager.email,
                            label: 'email'.tr,
                            hintText: 'example@domain.com',
                          ),
                          Obx(() {
                            return CustomField(
                              isRequired: true,
                              leading: SvgManager.key,
                              label: 'password'.tr,
                              isSecured: controller.isSecured.value,
                              hintText: 'enter_your_password'.tr,
                              trailing: IconButton(
                                onPressed: () => controller.isSecured.value =
                                !controller.isSecured.value,
                                icon: SvgPicture.asset(
                                  controller.isSecured.value
                                      ? SvgManager.eyeOpen
                                      : SvgManager.eyeClose,
                                  color: Theme.of(context)
                                      .canvasColor
                                      .withOpacity(.5),
                                ),
                              ),
                            );
                          }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                // onTap: () => Get.toNamed(RouteNames.register),
                child: Text(
                  'forgot_password'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'sign_in'.tr,
                onTap: () {
                  if (controller.loginKey.currentState!.validate()) {
                    // Get.toNamed(RouteNames.);
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'do_not_have_account'.tr,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Text(
                      'signup'.tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
