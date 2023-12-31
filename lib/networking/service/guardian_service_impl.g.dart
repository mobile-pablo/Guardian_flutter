// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_service_impl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,
// no_leading_underscores_for_local_identifiers

class _GuardianServiceImpl implements GuardianServiceImpl {
  _GuardianServiceImpl(
    this._dio);

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<NewsItem>>> getNews({
    required String query,
    required String showFields,
  }) async {
    const Map<String, dynamic> extra = <String, dynamic>{};
    final Map<String, dynamic> queryParameters = <String, dynamic>{
      r'q': query,
      r'show-fields': showFields,
    };
    // ignore: always_specify_types
    queryParameters.removeWhere((String k, v) => v == null);
    final Map<String, dynamic> headers = <String, dynamic>{};
    final Map<String, dynamic> data = <String, dynamic>{};
    final Response<Map<String, dynamic>> result =
        await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<HttpResponse<List<NewsItem>>>(
        Options(
          method: 'GET',
          headers: headers,
          extra: extra,
        )
            .compose(
              _dio.options,
              '/search',
              queryParameters: queryParameters,
              data: data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl),
      ),
    );

    List<NewsItem> value = await result.data!['response']['results']
        .map<NewsItem>(
            (dynamic i) => NewsItem.fromJson(i as Map<String, dynamic>))
        .toList();
    final HttpResponse<List<NewsItem>> httpResponse =
        HttpResponse<List<NewsItem>>(value, result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
