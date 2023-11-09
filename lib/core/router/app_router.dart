import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dalel_admin/view/pages/historical_characters/historical_characters_page.dart';
import 'package:dalel_admin/view/pages/historical_peirods/historical_peirods_page.dart';
import 'package:dalel_admin/view/pages/historical_souveners/historical_souveners_page.dart';
import 'package:dalel_admin/view/pages/home/home_page.dart';
import 'package:dalel_admin/view/splash/splash_page.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: HistoricalCharactersRoute.page),
        AutoRoute(page: HistoricalPeriodsRoute.page),
        AutoRoute(page: HistoricalSouvenirsRoute.page)
      ];
}
