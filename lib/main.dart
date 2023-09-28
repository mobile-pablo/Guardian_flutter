import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drift_1/di/injection_container.dart';
import 'package:flutter_drift_1/core/app_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(MyApp());
}

@RoutePage()
@Injectable()
class MyApp extends HookWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
