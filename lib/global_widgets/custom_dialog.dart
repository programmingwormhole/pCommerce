import 'package:get/get.dart';
import '../utils/assets_manager.dart';
import 'custom_alert.dart';

enum DialogType {
  error,
  success,
}

customDialog({
  required String message,
  String? title,
  void Function()? onTap,
  void Function()? onSecondButtonTap,
  final DialogType? dialogType,
  final String? buttonText,
  final String? secondButtonText,
  final String? animation,
}) {
  return Get.dialog(
    CustomAlert(
      title: title ??
          (dialogType == DialogType.success ? 'success'.tr : 'sorry'.tr),
      description: message,
      buttonText: buttonText ?? 'okay'.tr,
      image: animation ??
          (dialogType == DialogType.success
              ? AnimationManager.complete
              : AnimationManager.blocked),
      isAnimated: true,
      onButtonTap: onTap ?? () => Get.back(),
      onSecondButtonTap: onSecondButtonTap,
      secondButtonText: secondButtonText,
    ),
    barrierDismissible: false,
  );
}
