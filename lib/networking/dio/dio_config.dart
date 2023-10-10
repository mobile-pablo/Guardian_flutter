import 'package:dio/dio.dart';
import 'package:guardian_flutter/core/api_key.dart';
import 'package:guardian_flutter/core/const/news_service_const.dart';

BaseOptions _createOptions() => BaseOptions(
      baseUrl: guardianBaseUrl,
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 5),
      queryParameters: <String, dynamic>{'api-key': guardianApiKey},
      headers: <String, dynamic>{
        'Accept': '*/*',
        'Connection': 'keep-alive',
        'Content-Type': 'application/json',
      },
    );

Dio buildDio() {
  final Dio dio = Dio()..options = _createOptions();

  dio.interceptors.addAll(<Interceptor>[
    LogInterceptor(
      responseBody: true,
      requestBody: true,
    )
  ]);
  return dio;
}
