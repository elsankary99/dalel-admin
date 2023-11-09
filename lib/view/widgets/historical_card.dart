import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:flutter/material.dart';

class HistoricalCard extends StatelessWidget {
  const HistoricalCard(
      {super.key,
      this.onTap,
      required this.cardName,
      required this.icon,
      required this.title});
  final void Function()? onTap;
  final String cardName;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height * 0.15,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          color: AppColors.brown,
          boxShadow: [BoxShadow(color: AppColors.brown, blurRadius: 3)],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: AppColors.offWhite,
              size: context.width * 0.08,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cardName,
                  style: AppTextStyle.poppins500style16
                      .copyWith(color: AppColors.offWhite),
                ),
                SizedBox(height: context.height * 0.02),
                Text(
                  title,
                  style: AppTextStyle.poppins500style14
                      .copyWith(color: AppColors.offWhite),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_rounded,
              color: AppColors.offWhite,
            ),
          ],
        ),
      ),
    );
  }
}
