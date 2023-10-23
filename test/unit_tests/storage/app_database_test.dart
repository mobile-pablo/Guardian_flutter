import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';

void main() {
  late NewsDao newsDao;
  setUpAll(() {
    configureInjectionTest();
    newsDao = sl<NewsDao>();
  });

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  test('News Dao, News are stored', () async {
    List<NewsItemsEntityData> newsItems = await newsDao.getNews();
    expect(newsItems.length, 0);
  });
}
