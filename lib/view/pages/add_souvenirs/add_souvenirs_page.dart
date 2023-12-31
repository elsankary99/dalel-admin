import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/core/widget/custom_toast.dart';
import 'package:dalel_admin/provider/add_historycal_souvenirs_provider/add_historucal_souvenir_provider.dart';
import 'package:dalel_admin/provider/get_image_provider/get_image_provider.dart';
import 'package:dalel_admin/view/widgets/add_souvenirs_widget/add_souvenirs_form.dart';
import 'package:dalel_admin/view/widgets/custom_button.dart';
import 'package:dalel_admin/view/widgets/get_image_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddBazarSouvenirPage extends ConsumerWidget {
  const AddBazarSouvenirPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(addHistoricalSouvenirProvider.notifier);
    final state = ref.watch(addHistoricalSouvenirProvider);
    final imageProvider = ref.read(getImageProvider.notifier);
    ref.listen(addHistoricalSouvenirProvider, (previous, next) {
      if (next is AddHistoricalSouvenirError) {
        customToast(title: next.message, color: Colors.red);
      }
      if (next is AddHistoricalSouvenirSuccess) {
        customToast(
            title: "Periods Added Successfully", color: AppColors.primaryColor);
        ref.invalidate(getHistoricalSouvenirProvider);
        imageProvider.file = null;

        context.router.pop();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Bazar Books"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: GetImageCard()),
            const SliverToBoxAdapter(child: AddBazarSouvenirForm()),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.2)),
            SliverToBoxAdapter(
                child: CustomButton(
              child: state is AddHistoricalSouvenirLoading
                  ? CustomCircleIndicator(
                      color: AppColors.offWhite,
                    )
                  : null,
              onPressed: () async {
                if (imageProvider.imageUrl == null) {
                  customToast(
                      title: "Please Add Image First", color: Colors.red);
                } else {
                  provider.imageUrl = imageProvider.imageUrl;
                  await provider.addSouvenir();
                }
              },
            )),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.03)),
          ],
        ),
      ),
    );
  }
}
