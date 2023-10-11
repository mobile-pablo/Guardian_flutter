import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/core/route/app_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectionDev();
  runApp(MyApp());
}

@RoutePage()
@injectable
class MyApp extends HookWidget {
  final AppRouter _appRouter = getIt<AppRouter>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
 
 