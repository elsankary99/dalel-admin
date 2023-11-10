import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:dalel_admin/core/extension/media_query.dart';

import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  const CardWithImage({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
    this.onTap,
  });
  final void Function()? onTap;
  final String imageUrl;
  final String name;
  final String description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height * 0.15,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.brown,
            boxShadow: [BoxShadow(color: AppColors.brown, blurRadius: 3)]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.network(
            imageUrl,
            width: context.width * 0.3,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                maxLines: 1,
                style: AppTextStyle.poppins500style16
                    .copyWith(color: AppColors.offWhite),
              ),
              const SizedBox(height: 15),
              Text(
                description,
                maxLines: 1,
                style: AppTextStyle.poppins500style16
                    .copyWith(color: AppColors.offWhite),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.offWhite,
          ),
        ]),
      ),
    );
  }
}
