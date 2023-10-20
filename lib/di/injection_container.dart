import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:guardian_flutter/di/injection_container.config.dart';

final GetIt sl = GetIt.instance;
final GetIt getIt = GetIt.I;

@InjectableInit()
Future<void> configureInjectionDev() async =>
    sl.init(environment: Environment.dev);
Future<void> configureInjectionTest() async =>
    sl.init(environment: Environment.test);
