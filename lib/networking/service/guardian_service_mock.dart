import 'dart:convert';
import 'dart:io';


import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

@Injectable(as: GuardianService, env: <String>[Environment.test])
class GuardianServiceMock  implements GuardianService{
  JsonDecoder decoder = const JsonDecoder();

  @override
  Future<HttpResponse<List<NewsItem>>> getNews({
    required String query,
    required String showFields,
  }) async {
      final String guardianSearchJson = 
          await rootBundle.loadString('assets/json/guardian_search.json');
    final Map<String, dynamic> jsonmap = decoder.convert(guardianSearchJson);
    List<NewsItem> newsItems = await jsonmap['response']['results']
        .map<NewsItem>(
          (dynamic i) => NewsItem.fromJson(i as Map<String, dynamic>),
        )
        .toList();

    return HttpResponse<List<NewsItem>>(
      newsItems,
      Response<List<NewsItem>>(
        requestOptions: RequestOptions(path: 'test'),
        data: newsItems,
        statusCode: HttpStatus.ok,
      ),
    );
  }
}