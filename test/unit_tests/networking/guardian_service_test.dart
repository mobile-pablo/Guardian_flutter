import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:guardian_flutter/networking/utils/util.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'guardian_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GuardianService>()])
void main() {
  late GuardianService mockGuardianService;
  setUpAll(() {
    mockGuardianService = MockGuardianService();
  });

  test('Get news', () async {
    dynamic getNewsCall = mockGuardianService.getNews(
        query: "Dogs", showFields: "thumbnail,bodyText");

    when(getNewsCall).thenAnswer(
      (_) async {
        List<NewsItem> newsItems = await getGuardianMockNewsItems();
        return HttpResponse<List<NewsItem>>(
          newsItems,
          Response<List<NewsItem>>(
            requestOptions: RequestOptions(path: 'test'),
            data: newsItems,
            statusCode: HttpStatus.ok,
          ),
        );
      },
    );

    expect(getNewsCall, isA<HttpResponse<List<NewsItem>>>());
  });
}
