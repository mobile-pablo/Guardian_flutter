import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drift_1/di/injection_container.dart';
import 'package:flutter_drift_1/core/app_route.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(MyApp());
}

@RoutePage()
@Injectable()
class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}