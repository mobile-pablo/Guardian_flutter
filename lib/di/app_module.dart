import 'package:dio/dio.dart';
import 'package:flutter_drift_1/networking/dio/dio_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Injectable()
  Dio get dio => buildDio();
}
