import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:guardian_flutter/core/const/news_service_const.dart';
part 'guardian_service.g.dart';

@RestApi()
@injectable
abstract class GuardianService {
  @factoryMethod
  factory GuardianService(Dio dio) = _GuardianService;

  @GET(searchParameter)
  Future<HttpResponse<List<NewsItem>>> getNews({
    @Query('q') required String query,
    @Query('show-fields') required String showFields,
  });
}
