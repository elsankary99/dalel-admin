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
    final imageProvider = ref.read(getImageProvider.notifier);
    ref.watch(getImageProvider);
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
            SliverToBoxAdapter(child: CustomButton(
              onPressed: () async {
                provider.imageUrl = imageProvider.imageUrl;
                await provider.addHistoricalPeriods();
              },
            )),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.03)),
          ],
        ),
      ),
    );
  }
}
