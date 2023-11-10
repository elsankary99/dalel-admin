import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:dalel_admin/provider/add_war_provider/add_war_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:dalel_admin/view/widgets/card_with_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WarPage extends ConsumerWidget {
  final HistoricalModel data;

  const WarPage(this.data, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("War Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(AddWarRoute(data: data));
        },
        child: Icon(
          Icons.add,
          color: AppColors.offWhite,
        ),
      ),
      body: Center(
        child: ref.watch(getWarProvider).when(
              data: (data) => data.isNotEmpty
                  ? ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) => CardWithImage(
                          onTap: () {
                            context.router.push(AddWarRoute(data: data[index]));
                          },
                          description: data[index].description!,
                          imageUrl: data[index].imageUrl!,
                          name: data[index].name!),
                    )
                  : Text(
                      "Start Add War ",
                      style: AppTextStyle.poppins500style16,
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
