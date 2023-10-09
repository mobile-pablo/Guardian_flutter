
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  @Injectable()
  Dio get dio => Dio();
}