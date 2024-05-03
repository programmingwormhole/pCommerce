import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pCommerce/controllers/auth_controller.dart';
import 'package:pCommerce/global_widgets/custom_field.dart';
import 'package:pCommerce/utils/assets_manager.dart';

import '../../../global_widgets/custom_button.dart';
import '../../../routes/route_names.dart';
import '../../../utils/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Form(
                    key: controller.registerKey,
                    child: Column(
                      children: [
                        Text(
                          'create_account'.tr,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'register_ins'.tr,
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
                              leading: SvgManager.person,
                              label: 'name'.tr,
                              hintText: 'enter_your_name'.tr,
                            ),
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
                Obx(
                  () => Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                          color: AppColors.primary,
                          width: 2,
                        ),
                        activeColor: AppColors.primary,
                        value: controller.isAgree.value,
                        onChanged: (value) => controller.isAgree.value =
                            !controller.isAgree.value,
                      ),
                      Text('agree_with'.tr),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('terms_n_conditions'.tr,
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  title: 'signup'.tr,
                  onTap: () {
                    if (controller.registerKey.currentState!.validate()) {
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
                      'already_have_account'.tr,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(RouteNames.login),
                      child: Text(
                        'sign_in'.tr,
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
      ),
    );
  }
}
