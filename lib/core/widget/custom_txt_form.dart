import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool maxLine;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.maxLine = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        validator: (value) {
          if (value!.trim().isEmpty) {
            return "AppStrings.requiredField";
          }
          return null;
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: AppColors.primaryColor,
        maxLines: maxLine ? null : 1,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.brown, width: 1.5)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey, width: 1.5)),
            labelStyle: AppTextStyle.poppins500style12,
            labelText: labelText),
      ),
    );
  }
}
