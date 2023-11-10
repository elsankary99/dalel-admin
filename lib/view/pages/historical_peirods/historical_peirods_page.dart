import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:dalel_admin/view/widgets/card_with_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoricalPeriodsPage extends StatelessWidget {
  const HistoricalPeriodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historical Periods"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const AddPeriodsRoute());
        },
        child: Icon(
          Icons.add,
          color: AppColors.offWhite,
        ),
      ),
      body: const Column(children: [
        CardWithImage(
            description: "",
            imageUrl:
                "https://firebasestorage.googleapis.com/v0/b/dalel-4aba4.appspot.com/o/Images%2Fmain-qimg-e86e1d27dc94693b59c09bbaca490a72-pjlq.jpg?alt=media&token=a87c022a-0951-45d1-af0b-16405257163c",
            name: ""),
      ]),
    );
  }
}
