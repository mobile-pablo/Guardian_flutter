import 'package:flutter_drift_1/core/utils/data_transfer.dart';
import 'package:flutter_drift_1/domain/model/news_item.dart';

abstract class NewsRepository {

  Future<DataTransfer<List<NewsItem>>> getNews({required String query});
}