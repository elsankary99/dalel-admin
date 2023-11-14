import 'package:dalel_admin/core/constant/app_Strings.dart';
import 'package:dalel_admin/provider/periods_provider/periods_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/core/router/app_router.dart';
import 'package:dalel_admin/view/widgets/historical_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Admin")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: HistoricalCard(
                onTap: () {
                  ref.read(collectionProvider.notifier).state =
                      AppStrings.charactersCollection;
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
                  ref.read(collectionProvider.notifier).state =
                      AppStrings.periodsCollection;
                  context.router.push(const HistoricalPeriodsRoute());
                },
                title: "You Can Add More Periods",
                icon: Icons.workspace_premium_sharp),
          ),
          SliverToBoxAdapter(
            child: HistoricalCard(
                cardName: "Historical Souvenirs",
                onTap: () {
                  ref.read(collectionProvider.notifier).state =
                      AppStrings.souvenirsCollection;
                  context.router.push(const HistoricalSouvenirsRoute());
                },
                title: "You Can Add More Souvenirs",
                icon: Icons.account_balance_sharp),
          ),
          SliverToBoxAdapter(
            child: HistoricalCard(
                cardName: "History Books",
                onTap: () {
                  ref.read(collectionProvider.notifier).state =
                      AppStrings.souvenirsCollection;
                  context.router.push(const HistoricalSouvenirsRoute());
                },
                title: "You Can Add More Books",
                icon: Icons.menu_book_sharp),
          ),
          SliverToBoxAdapter(
            child: HistoricalCard(
                cardName: "Historical Souvenir",
                onTap: () {
                  ref.read(collectionProvider.notifier).state =
                      AppStrings.souvenirsCollection;
                  context.router.push(const HistoricalSouvenirsRoute());
                },
                title: "You Can Add More",
                icon: Icons.menu_book_sharp),
          ),
        ]),
      ),
    );
  }
}
