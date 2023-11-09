// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HistoricalCharactersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoricalCharactersPage(),
      );
    },
    HistoricalPeriodsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoricalPeriodsPage(),
      );
    },
    HistoricalSouvenirsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoricalSouvenirsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [HistoricalCharactersPage]
class HistoricalCharactersRoute extends PageRouteInfo<void> {
  const HistoricalCharactersRoute({List<PageRouteInfo>? children})
      : super(
          HistoricalCharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoricalCharactersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoricalPeriodsPage]
class HistoricalPeriodsRoute extends PageRouteInfo<void> {
  const HistoricalPeriodsRoute({List<PageRouteInfo>? children})
      : super(
          HistoricalPeriodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoricalPeriodsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoricalSouvenirsPage]
class HistoricalSouvenirsRoute extends PageRouteInfo<void> {
  const HistoricalSouvenirsRoute({List<PageRouteInfo>? children})
      : super(
          HistoricalSouvenirsRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoricalSouvenirsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
