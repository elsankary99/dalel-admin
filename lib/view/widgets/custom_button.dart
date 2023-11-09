import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.height * 0.07,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.brown),
          child: const Text("Add"),
        ));
  }
}
