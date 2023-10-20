import 'dart:io';

import 'package:dio/dio.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:guardian_flutter/networking/utils/util.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

@Injectable(as: GuardianService, env: <String>[Environment.test])
class GuardianServiceMock implements GuardianService {
  @override
  Future<HttpResponse<List<NewsItem>>> getNews({
    required String query,
    required String showFields,
  }) async {
    List<NewsItem> newsItems = await getGuardianMockNewsItems();

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
