import 'package:drift/drift.dart';
import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/storage/dao/news_dao.dart';
import 'package:flutter_drift_1/storage/database/app_database.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_drift_1/storage/entity/news_item_entity.dart';

part 'news_dao_impl.g.dart';

@DriftAccessor(tables: [NewsItems])
@Injectable()
class NewsDaoImpl extends DatabaseAccessor<AppDatabase>
    with _$NewsDaoImplMixin
    implements NewsDao {
  NewsDaoImpl(AppDatabase db) : super(db);

  @override
  Future<List<NewsItem>> getNews() {
    return (select(attachedDatabase.newsItems)).get();
  }

  @override
  Future insertNews(NewsItemDTO news) => into(attachedDatabase.newsItems).insertReturning(
        NewsItemsCompanion.insert(
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
}
