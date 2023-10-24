import 'package:drift/drift.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';
import 'package:injectable/injectable.dart';
import 'package:guardian_flutter/storage/entity/news_item_entity.dart';

part 'news_dao_impl.g.dart';

@DriftAccessor(tables: <Type>[NewsItemsEntity])
@Injectable(as: NewsDao, env: <String>[Environment.prod, Environment.dev])
class NewsDaoImpl extends DatabaseAccessor<AppDatabase>
    with _$NewsDaoImplMixin
    implements NewsDao {
  NewsDaoImpl(AppDatabase db) : super(db);

  @override
  Future<List<NewsItemsEntityData>> getNews() {
    return (select(newsItemsEntity)).get();
  }

  @override
  Future<void> insertNews(NewsItemDTO news) =>
      into(newsItemsEntity).insertReturning(
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
  Future<void> removeNews(String newsId) => (delete(newsItemsEntity)
        ..where(($NewsItemsEntityTable t) => t.id.equals(newsId)))
      .go();

  @override
  Future<int> updateNews(NewsItemDTO news) async {
    return (update(newsItemsEntity)
          ..where(($NewsItemsEntityTable tbl) => tbl.id.equals(news.id)))
        .write(
      NewsItemsEntityData(
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
  }

  @override
  Future<void> cleanDatabase() async {
       final tables = db.allTables.toList().reversed;
    for (final table in tables) {
      await delete(table).go();
    }
  }

}
