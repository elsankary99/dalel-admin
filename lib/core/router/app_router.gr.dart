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
    AddCharacterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCharacterPage(),
      );
    },
    AddPeriodsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddPeriodsPage(),
      );
    },
    AddSouvenirsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddSouvenirsPage(),
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
/// [AddCharacterPage]
class AddCharacterRoute extends PageRouteInfo<void> {
  const AddCharacterRoute({List<PageRouteInfo>? children})
      : super(
          AddCharacterRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCharacterRoute';

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
/// [AddSouvenirsPage]
class AddSouvenirsRoute extends PageRouteInfo<void> {
  const AddSouvenirsRoute({List<PageRouteInfo>? children})
      : super(
          AddSouvenirsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddSouvenirsRoute';

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
