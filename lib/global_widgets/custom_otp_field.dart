import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';

class CustomOtpField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String otp;

  const CustomOtpField({super.key, this.onChanged, required this.otp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return '';
          }
          return null;
        },
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: otp.isNotEmpty
                  ? AppColors.primary
                  : AppColors.primary.withOpacity(.5),
              width: otp.isNotEmpty ? 2 : 1,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
