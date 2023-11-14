import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/constant/app_text_style.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:dalel_admin/core/widget/custom_circle_indicator.dart';
import 'package:dalel_admin/provider/add_history_book_provider/add_history_book_provider.dart';
import 'package:dalel_admin/view/widgets/card_with_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BazarBooksPage extends ConsumerWidget {
  const BazarBooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bazar Books"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const AddBazarBooksRoute());
        },
        child: Icon(
          Icons.add,
          color: AppColors.offWhite,
        ),
      ),
      body: Center(
        child: ref.watch(getHistoryBookProvider).when(
              data: (data) => ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) => CardWithImage(
                    onTap: () {},
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
