import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:dalel_admin/view/widgets/historical_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Admin")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: HistoricalCard(
                onTap: () {
                  context.router.push(const HistoricalCharactersRoute());
                },
                cardName: "Historical Characters",
                title: "You Can Add More Characters",
                icon: Icons.people_alt_sharp),
          ),
          SliverToBoxAdapter(
            child: HistoricalCard(
                cardName: "Historical Periods",
                onTap: () {
                  context.router.push(const HistoricalPeriodsRoute());
                },
                title: "You Can Add More Periods",
                icon: Icons.workspace_premium_sharp),
          ),
          SliverToBoxAdapter(
            child: HistoricalCard(
                cardName: "Historical Souvenirs",
                onTap: () {
                  context.router.push(const HistoricalSouvenirsRoute());
                },
                title: "You Can Add More Souvenirs",
                icon: Icons.account_balance_sharp),
          ),
        ]),
      ),
    );
  }
}
