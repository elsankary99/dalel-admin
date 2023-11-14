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
    AddBazarBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBazarBooksPage(),
      );
    },
    AddBazarSouvenirRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBazarSouvenirPage(),
      );
    },
    AddPeriodsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddPeriodsPage(),
      );
    },
    AddWarRoute.name: (routeData) {
      final args = routeData.argsAs<AddWarRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddWarPage(
          args.data,
          key: args.key,
        ),
      );
    },
    BazarBooksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BazarBooksPage(),
      );
    },
    BazarSouvenirRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BazarSouvenirPage(),
      );
    },
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
    WarRoute.name: (routeData) {
      final args = routeData.argsAs<WarRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WarPage(
          args.data,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AddBazarBooksPage]
class AddBazarBooksRoute extends PageRouteInfo<void> {
  const AddBazarBooksRoute({List<PageRouteInfo>? children})
      : super(
          AddBazarBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBazarBooksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddBazarSouvenirPage]
class AddBazarSouvenirRoute extends PageRouteInfo<void> {
  const AddBazarSouvenirRoute({List<PageRouteInfo>? children})
      : super(
          AddBazarSouvenirRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBazarSouvenirRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddPeriodsPage]
class AddPeriodsRoute extends PageRouteInfo<void> {
  const AddPeriodsRoute({List<PageRouteInfo>? children})
      : super(
          AddPeriodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddPeriodsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddWarPage]
class AddWarRoute extends PageRouteInfo<AddWarRouteArgs> {
  AddWarRoute({
    required HistoricalModel data,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddWarRoute.name,
          args: AddWarRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AddWarRoute';

  static const PageInfo<AddWarRouteArgs> page = PageInfo<AddWarRouteArgs>(name);
}

class AddWarRouteArgs {
  const AddWarRouteArgs({
    required this.data,
    this.key,
  });

  final HistoricalModel data;

  final Key? key;

  @override
  String toString() {
    return 'AddWarRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [BazarBooksPage]
class BazarBooksRoute extends PageRouteInfo<void> {
  const BazarBooksRoute({List<PageRouteInfo>? children})
      : super(
          BazarBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BazarBooksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BazarSouvenirPage]
class BazarSouvenirRoute extends PageRouteInfo<void> {
  const BazarSouvenirRoute({List<PageRouteInfo>? children})
      : super(
          BazarSouvenirRoute.name,
          initialChildren: children,
        );

  static const String name = 'BazarSouvenirRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [WarPage]
class WarRoute extends PageRouteInfo<WarRouteArgs> {
  WarRoute({
    required HistoricalModel data,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WarRoute.name,
          args: WarRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WarRoute';

  static const PageInfo<WarRouteArgs> page = PageInfo<WarRouteArgs>(name);
}

class WarRouteArgs {
  const WarRouteArgs({
    required this.data,
    this.key,
  });

  final HistoricalModel data;

  final Key? key;

  @override
  String toString() {
    return 'WarRouteArgs{data: $data, key: $key}';
  }
}
