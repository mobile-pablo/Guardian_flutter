import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:retrofit/retrofit.dart';

abstract class GuardianService {

  Future<HttpResponse<List<NewsItem>>> getNews({
    required String query,
    required String showFields,
  });
}