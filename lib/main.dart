import 'package:flutter/material.dart';
import 'package:flutter_drift_1/feature/home/home_screen.dart';
import 'package:flutter_drift_1/di/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(const HomeScreen());
}