import 'package:dalel_admin/provider/get_image_provider/get_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/extension/media_query.dart';
import 'package:dalel_admin/view/widgets/custom_button.dart';
import 'package:dalel_admin/view/widgets/get_image_card.dart';
import 'package:dalel_admin/view/widgets/periods_widget/add_periods_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class AddPeriodsPage extends ConsumerWidget {
  const AddPeriodsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getImageProvider);
    final provider = ref.read(getImageProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Periods"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: GetImageCard(
              onTap: () {
                provider.getImage(ImageSource.gallery);
              },
            )),
            const SliverToBoxAdapter(child: AddPeriodsForm()),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.3)),
            const SliverToBoxAdapter(child: CustomButton()),
            SliverToBoxAdapter(child: SizedBox(height: context.height * 0.03)),
          ],
        ),
      ),
    );
  }
}
