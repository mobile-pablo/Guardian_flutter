
import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service_mock.dart';
import 'package:retrofit/retrofit.dart';

void main() {
  GuardianServiceMock guardianServiceMock = GuardianServiceMock();

  test('Get news', () async {
    TestWidgetsFlutterBinding.ensureInitialized();

    expect(
        await guardianServiceMock.getNews(
            query: 'Dogs', showFields: 'thumbnail,bodyText'),
        isA<HttpResponse<List<NewsItem>>>());
  });
}
