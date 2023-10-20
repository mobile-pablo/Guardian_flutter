import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:guardian_flutter/core/const/news_service_const.dart';
part 'guardian_service_impl.g.dart';

@RestApi()
@Injectable(
    as: GuardianService, env: <String>[Environment.prod, Environment.dev])
abstract class GuardianServiceImpl implements GuardianService {
  @factoryMethod
  factory GuardianServiceImpl(Dio dio) = _GuardianServiceImpl;

  @override
  @GET(searchParameter)
  Future<HttpResponse<List<NewsItem>>> getNews({
    @Query('q') required String query,
    @Query('show-fields') required String showFields,
  });
}
