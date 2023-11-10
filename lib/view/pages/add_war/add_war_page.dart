import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/core/widget/custom_toast.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:dalel_admin/provider/add_war_provider/add_war_provider.dart';
import 'package:dalel_admin/provider/get_image_provider/get_image_provider.dart';
import 'package:dalel_admin/view/widgets/war_widget/add_war_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:dalel_admin/view/widgets/custom_button.dart';
import 'package:dalel_admin/view/widgets/get_image_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddWarPage extends ConsumerWidget {
  final HistoricalModel data;
  const AddWarPage(this.data, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(addWarProvider.notifier);
    final state = ref.watch(addWarProvider);
    final imageProvider = ref.read(getImageProvider.notifier);
    ref.listen(addWarProvider, (previous, next) {
      if (next is AddWarError) {
        customToast(title: next.message, color: Colors.red);
      }
      if (next is AddWarSuccess) {
        customToast(
            title: "War Added Successfully", color: AppColors.primaryColor);

        ref.invalidate(getWarProvider);
        context.router.pop();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Wars"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: GetImageCard()),
            const SliverToBoxAdapter(child: AddWarForm()),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.3)),
            SliverToBoxAdapter(
                child: CustomButton(
              child: state is AddWarLoading
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
                  ref.read(docIdProvider.notifier).state = data.id!;

                  provider.docId = data.id;
                  await provider.addWar();
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
