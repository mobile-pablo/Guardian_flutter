import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/data_transfer.dart';

abstract class NewsRepository {
  Future<DataTransfer<List<NewsItemDTO>>> getNews({required String query});

  Future<void> insertNews(NewsItemDTO newsItemDTO);
  Future<void> updateNews(NewsItemDTO newsItemDTO);
  Future<void> removeNews(NewsItemDTO newsItemDTO);
}
