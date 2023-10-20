import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NewsDao, env: <String>[Environment.test])
class NewsDaoMock implements NewsDao {
  late AppDatabase _db;

  NewsDaoMock() {
    _db = AppDatabase();
  }

  @override
  Future<List<NewsItemsEntityData>> getNews() =>
      (_db.select(_db.newsItemsEntity)).get();

  @override
  Future<void> insertNews(NewsItemDTO news) =>
      _db.into(_db.newsItemsEntity).insertReturning(
            NewsItemsEntityCompanion.insert(
              id: news.id,
              type: news.type,
              sectionId: news.sectionId,
              sectionName: news.sectionName,
              webPublicationDate: news.webPublicationDate,
              webTitle: news.webTitle,
              webUrl: news.webUrl,
              apiUrl: news.apiUrl,
              isHosted: news.isHosted,
              pillarId: news.pillarId,
              pillarName: news.pillarName,
              thumbnail: news.thumbnail,
              trailText: news.trailText,
            ),
          );

  @override
  Future<void> removeNews(NewsItemDTO news) => (_db.delete(_db.newsItemsEntity)
        ..where(($NewsItemsEntityTable t) => t.id.equals(news.id)))
      .go();

  @override
  Future<void> updateNews(NewsItemDTO news) =>
      (_db.update(_db.newsItemsEntity).replace(
            NewsItemsEntityCompanion.insert(
              id: news.id,
              type: news.type,
              sectionId: news.sectionId,
              sectionName: news.sectionName,
              webPublicationDate: news.webPublicationDate,
              webTitle: news.webTitle,
              webUrl: news.webUrl,
              apiUrl: news.apiUrl,
              isHosted: news.isHosted,
              pillarId: news.pillarId,
              pillarName: news.pillarName,
              thumbnail: news.thumbnail,
              trailText: news.trailText,
            ),
          ));
}