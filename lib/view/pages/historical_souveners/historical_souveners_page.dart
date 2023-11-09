import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/constant/app_colors.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoricalSouvenirsPage extends StatelessWidget {
  const HistoricalSouvenirsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historical Souvenirs"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const AddSouvenirsRoute());
        },
        child: Icon(
          Icons.add,
          color: AppColors.offWhite,
        ),
      ),
    );
  }
}
