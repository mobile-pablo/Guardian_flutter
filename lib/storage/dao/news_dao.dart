import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/storage/database/app_database.dart';

abstract class NewsDao {
  Future<List<NewsItemsEntityData>> getNews();

  Future<void> insertNews(NewsItemDTO news);
  
  Future<void> updateNews(NewsItemDTO news);

  Future<void> removeNews(NewsItemDTO news);
}