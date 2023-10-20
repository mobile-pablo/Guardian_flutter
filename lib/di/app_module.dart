import 'package:dio/dio.dart';
import 'package:guardian_flutter/networking/dio/dio_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Injectable()
  Dio get dio => buildDio();
}
