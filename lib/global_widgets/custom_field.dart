import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

enum FieldType { normal, dropdown, phoneNumber }

class CustomField extends StatelessWidget {
  final String label;
  final String hintText;
  final String? leading;
  final Widget? trailing;
  final String? trailingPath;
  final TextInputType? keyboardType;
  final bool? isSecured;
  final bool? isEnabled;
  final bool? isRequired;
  final void Function(String?)? onChanged;
  final void Function()? onTap;
  final FieldType? fieldType;
  final String? dropdownValue;
  final List<String>? dropdownItems;

  const CustomField({
    super.key,
    this.leading,
    required this.hintText,
    this.trailing,
    required this.label,
    this.keyboardType,
    this.isSecured,
    this.isRequired,
    this.onChanged,
    this.isEnabled,
    this.trailingPath,
    this.onTap,
    this.fieldType,
    this.dropdownValue,
    this.dropdownItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: onTap,
          child: TextFormField(
            enabled: isEnabled ?? true,
            onChanged: onChanged,
            obscureText: isSecured ?? false,
            obscuringCharacter: '•',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            validator: isRequired == null || isRequired == false
                ? null
                : (value) {
                    if (value!.isEmpty) {
                      return 'field_validation_error'.tr;
                    }
                    return null;
                  },
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1.5,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.5,
                ),
              ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.tertiaryContainer,
              prefixIcon: leading == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        leading!,
                        height: 20,
                        width: 20,
                        color: Theme.of(context).canvasColor.withOpacity(.5),
                      ),
                    ),
              suffixIcon: trailingPath != null
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        trailingPath!,
                        height: 20,
                        width: 20,
                        color: Theme.of(context).canvasColor.withOpacity(.5),
                      ),
                    )
                  : trailing,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Theme.of(context).canvasColor.withOpacity(.5),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
