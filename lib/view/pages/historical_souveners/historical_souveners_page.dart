import 'package:dalel_admin/core/constant/app_Strings.dart';
import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/provider/add_war_provider/add_war_provider.dart';
import 'package:dalel_admin/provider/periods_provider/periods_provider.dart';
import 'package:dalel_admin/view/widgets/card_with_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoricalSouvenirsPage extends ConsumerWidget {
  const HistoricalSouvenirsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historical Souvenirs"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(periodsProvider.notifier).collection =
              AppStrings.souvenirsCollection;
          context.router.push(const AddPeriodsRoute());
        },
        child: Icon(
          Icons.add,
          color: AppColors.offWhite,
        ),
      ),
      body: Center(
        child: ref.watch(getPeriodsProvider).when(
              data: (data) => ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) => CardWithImage(
                    onTap: () {
                      ref.read(addWarProvider.notifier).warCollection =
                          AppStrings.souvenirsCollection;
                      ref.read(warCollectionProvider.notifier).state =
                          AppStrings.souvenirsCollection;
                      ref.read(docIdProvider.notifier).state = data[index].id!;

                      context.router.push(WarRoute(data: data[index]));
                    },
                    description: data[index].description!,
                    imageUrl: data[index].imageUrl!,
                    name: data[index].name!),
              ),
              error: (error, _) => Text(
                error.toString(),
                style:
                    AppTextStyle.poppins500style14.copyWith(color: Colors.red),
              ),
              loading: () => CustomCircleIndicator(
                color: AppColors.brown,
              ),
            ),
      ),
    );
  }
}
