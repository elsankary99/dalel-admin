import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/core/widget/custom_dialog.dart';
import 'package:dalel_admin/core/widget/custom_toast.dart';
import 'package:dalel_admin/provider/get_image_provider/get_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GetImageCard extends ConsumerWidget {
  const GetImageCard({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getImageProvider);
    final provider = ref.read(getImageProvider.notifier);
    ref.listen(
      getImageProvider,
      (previous, next) {
        if (next is GetImageSuccess) {
          customToast(title: "Image Uploaded Successfully");
        }
        if (next is GetImageError) {
          customToast(title: next.message, color: Colors.red);
        }
        if (next is GetImageLoading) {
          context.router.pop();
        }
      },
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          getImage(
            context,
            cameraBtn: () {
              provider.getImage(ImageSource.camera);
            },
            galleryBtn: () {
              provider.getImage(ImageSource.gallery);
            },
          );
        },
        child: Container(
          height: context.height * 0.25,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.brown),
            borderRadius: BorderRadius.circular(8),
          ),
          child: state is GetImageLoading
              ? CustomCircleIndicator(
                  color: AppColors.brown,
                )
              : provider.file == null
                  ? Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: AppColors.brown,
                        size: 34,
                      ),
                    )
                  : Image.file(provider.file!),
        ),
      ),
    );
  }
}
