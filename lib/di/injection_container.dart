import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_drift_1/di/injection_container.config.dart';

final GetIt sl = GetIt.instance;
final GetIt getIt = GetIt.I;

@InjectableInit()
Future<void> configureInjection() async => sl.init();
