import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

void main() {
  late NewsDao newsDao;
  setUpAll(() {
    configureInjectionTest();
    applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    newsDao = sl<NewsDao>();
  });

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  test('News Dao, News are stored', () async {
    await newsDao.insertNews(
      const NewsItemDTO(
        id: 'id',
        type: 'type',
        sectionId: 'sectionId',
        sectionName: 'sectionName',
        webPublicationDate: 'webPublicationDate',
        webTitle: 'webTitle',
        webUrl: 'webUrl',
        apiUrl: 'apiUrl',
        isHosted: false,
        pillarId: 'pillarId',
        pillarName: 'pillarName',
        thumbnail: 'thumbnail',
        trailText: 'trailText',
      ),
    );

    final news = await newsDao.getNews();
    expect(news.length, 1);
  });
}
