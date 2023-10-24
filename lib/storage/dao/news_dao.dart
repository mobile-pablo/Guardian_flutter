import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';

abstract class NewsDao {
  Future<List<NewsItemsEntityData>> getNews();

  Future<void> insertNews(NewsItemDTO news);

  Future<void> updateNews(NewsItemDTO news);

  Future<void> removeNews(String newsId);
  
  void cleanDatabase();

  void closeDatabase();
}
