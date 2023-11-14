import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:dalel_admin/view/pages/add_books/add_books_page.dart';
import 'package:dalel_admin/view/pages/add_books/bazar_books_page.dart';
import 'package:dalel_admin/view/pages/add_peirods/add_periods_page.dart';
import 'package:dalel_admin/view/pages/add_souvenirs/add_souvenirs_page.dart';
import 'package:dalel_admin/view/pages/add_souvenirs/bazar_souvenirs_page.dart';
import 'package:dalel_admin/view/pages/add_war/add_war_page.dart';
import 'package:dalel_admin/view/pages/historical_characters/historical_characters_page.dart';
import 'package:dalel_admin/view/pages/historical_peirods/historical_peirods_page.dart';
import 'package:dalel_admin/view/pages/historical_souveners/historical_souveners_page.dart';
import 'package:dalel_admin/view/pages/home/home_page.dart';
import 'package:dalel_admin/view/pages/splash/splash_page.dart';
import 'package:dalel_admin/view/pages/war_page/war_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        //? Historical
        AutoRoute(page: HistoricalCharactersRoute.page),
        AutoRoute(page: HistoricalPeriodsRoute.page),
        AutoRoute(page: HistoricalSouvenirsRoute.page),
        AutoRoute(page: WarRoute.page),
        //? Add
        AutoRoute(page: AddPeriodsRoute.page),
        AutoRoute(page: AddWarRoute.page),
//? Bazar
        AutoRoute(page: BazarBooksRoute.page),
        AutoRoute(page: BazarSouvenirRoute.page),
        AutoRoute(page: AddBazarBooksRoute.page),
        AutoRoute(page: AddBazarSouvenirRoute.page),
      ];
}
