import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';

@Injectable(env: <String>[Environment.test])
abstract class GuardianServiceMock {

  Future<HttpResponse<List<NewsItem>>> getNews({
   required String query,
    required String showFields,
  });
}
