import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_drift_1/core/utils/data_transfer.dart';
import 'package:flutter_drift_1/domain/mapper/news_dto_mapper.dart';
import 'package:flutter_drift_1/domain/model/news_item.dart';
import 'package:flutter_drift_1/domain/repository/news_repository.dart';
import 'package:flutter_drift_1/networking/service/guardian_service.dart';
import 'package:flutter_drift_1/storage/dao/news_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';

@injectable
class NewsRepositoryImpl implements NewsRepository {
  final GuardianService _guardianService;
  final NewsDao _newsDao;
  final NewsDTOMapper _newsDTOMapper = NewsDTOMapper();

  NewsRepositoryImpl(this._guardianService, this._newsDao);

  @override
  Future<DataTransfer<List<NewsItem>>> getNews({required String query}) async {
    try {
      final HttpResponse<List<NewsItem>> httpResponse =
          await _guardianService.getNews(query: query);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<NewsItem> newsList = httpResponse.data;
        newsList.forEach((NewsItem newsItem) async {
          await _newsDao.insertNews(_newsDTOMapper.convert(newsItem));
        });

        return DataTransfer<List<NewsItem>>(data: httpResponse.data);
      } else {
        return DataTransfer<List<NewsItem>>(
            exception: DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.connectionError,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataTransfer<List<NewsItem>>(exception: e);
    }
  }
}
