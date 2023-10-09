import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_drift_1/core/const/news_service_const.dart';
import 'package:flutter_drift_1/domain/model/news_item.dart';

part 'guardian_service.g.dart';

@RestApi()
@injectable
abstract class GuardianService {

  @factoryMethod
  factory GuardianService(Dio dio) = _GuardianService;

  @GET(searchParameter)
  Future<HttpResponse<List<NewsItem>>> getNews(
      {@Query('q') required String query});
}
