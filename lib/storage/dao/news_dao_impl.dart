import 'package:drift/drift.dart';
import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/storage/dao/news_dao.dart';
import 'package:flutter_drift_1/storage/database/app_database.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_drift_1/storage/entity/news_item_entity.dart';

part 'news_dao_impl.g.dart';

@DriftAccessor(tables: [NewsItemsEntity])
@Injectable()
class NewsDaoImpl extends DatabaseAccessor<AppDatabase>
    with _$NewsDaoImplMixin
    implements NewsDao {
  NewsDaoImpl(AppDatabase db) : super(db);

  @override
  Future<List<NewsItemsEntityData>> getNews() {
    return (select(newsItemsEntity)).get();
  }

  @override
  Future insertNews(NewsItemDTO news) => into(newsItemsEntity).insertReturning(
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
        ),
      );

  @override
  Future removeNews(NewsItemDTO news) =>
      (delete(newsItemsEntity)..where((t) => t.id.equals(news.id))).go();

  @override
  Future updateNews(NewsItemDTO news) => (update(newsItemsEntity).replace(
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
        ),
      ));
}
