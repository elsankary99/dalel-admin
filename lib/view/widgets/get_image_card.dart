import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:flutter/material.dart';

class GetImageCard extends StatelessWidget {
  const GetImageCard({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: context.height * 0.25,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.brown),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              Icons.camera_alt_outlined,
              color: AppColors.brown,
              size: 34,
            ),
          ),
        ),
      ),
    );
  }
}
