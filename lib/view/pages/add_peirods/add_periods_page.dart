import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/core/widget/custom_toast.dart';
import 'package:dalel_admin/provider/get_image_provider/get_image_provider.dart';
import 'package:dalel_admin/provider/periods_provider/periods_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:dalel_admin/view/widgets/custom_button.dart';
import 'package:dalel_admin/view/widgets/get_image_card.dart';
import 'package:dalel_admin/view/widgets/periods_widget/add_periods_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddPeriodsPage extends ConsumerWidget {
  const AddPeriodsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(periodsProvider.notifier);
    final state = ref.watch(periodsProvider);
    final imageProvider = ref.read(getImageProvider.notifier);
    ref.listen(periodsProvider, (previous, next) {
      if (next is AddPeriodsError) {
        customToast(title: next.message, color: Colors.red);
      }
      if (next is AddPeriodsSuccess) {
        customToast(
            title: "Periods Added Successfully", color: AppColors.primaryColor);
        context.router.pop();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Periods"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: GetImageCard()),
            const SliverToBoxAdapter(child: AddPeriodsForm()),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.3)),
            SliverToBoxAdapter(
                child: CustomButton(
              child: state is AddPeriodsLoading
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
                  await provider.addHistoricalPeriods();
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
