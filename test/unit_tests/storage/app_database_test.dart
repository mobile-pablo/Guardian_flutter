import 'package:flutter_test/flutter_test.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/di/injection_container.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

void main() {
  late NewsDao newsDao;
  NewsItemDTO dto = const NewsItemDTO(
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
  );

  setUpAll(() {
    configureInjectionTest();
    newsDao = sl<NewsDao>();
    applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
  });

  group('News Dao', () {
 

    test('News Dao, News are stored', () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await newsDao.insertNews(dto);

      List<NewsItemsEntityData> news = await newsDao.getNews();
      expect(news.length, 1);
       newsDao.cleanDatabase();
    });

    test('News Dao, News are removed', () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await newsDao.insertNews(dto);

      List<NewsItemsEntityData> news = await newsDao.getNews();

      expect(news.length, 1);

      await newsDao.removeNews(dto.id);
      expect(news.length, 0);
       newsDao.cleanDatabase();
    });

    test('News Dao, News are updated', () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await newsDao.insertNews(dto);

      List<NewsItemsEntityData> news = await newsDao.getNews();

      expect(news.length, 1);

      NewsItemDTO updatedDto = dto.copyWith(trailText: 'Hello World');
      await newsDao.updateNews(updatedDto);

      List<NewsItemsEntityData> updatedNews = await newsDao.getNews();
      expect(updatedNews.length, 1);
      expect(updatedNews[0].trailText, 'Hello World');
       newsDao.cleanDatabase();
    });

  });
}
