import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service_mock.dart';
import 'package:guardian_flutter/networking/utils/util.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class MockGuardianServiceMock extends Mock implements GuardianServiceMock {}

void main() {
  MockGuardianServiceMock mockGuardianServiceMock = MockGuardianServiceMock();

  test('Get news', () async {
    TestWidgetsFlutterBinding.ensureInitialized();

    List<NewsItem> newsItems = await getGuardianMockNewsItems();
    when(() => mockGuardianServiceMock.getNews(
        query: 'Dogs', showFields: 'thumbnail,bodyText')).thenAnswer(
      (_) async {
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

    expect(
        await mockGuardianServiceMock.getNews(
            query: 'Dogs', showFields: 'thumbnail,bodyText'),
        isA<HttpResponse<List<NewsItem>>>());
  });
}
