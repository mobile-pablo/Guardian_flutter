// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:guardian_flutter/feature/home/page/home_screen.dart' as _i1;
import 'package:guardian_flutter/main.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreen(),
      );
    },
    MyApp.name: (routeData) {
      final args = routeData.argsAs<MyAppArgs>(orElse: () => const MyAppArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MyApp(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MyApp]
class MyApp extends _i3.PageRouteInfo<MyAppArgs> {
  MyApp({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MyApp.name,
          args: MyAppArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyApp';

  static const _i3.PageInfo<MyAppArgs> page = _i3.PageInfo<MyAppArgs>(name);
}

class MyAppArgs {
  const MyAppArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'MyAppArgs{key: $key}';
  }
}
