import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_drift_1/core/utils/data_transfer.dart';
import 'package:flutter_drift_1/domain/model/news_item.dart';
import 'package:flutter_drift_1/domain/repository/news_repository.dart';
import 'package:flutter_drift_1/networking/service/guardian_service.dart';
import 'package:flutter_drift_1/storage/dao/news_dao.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsRepositoryImpl implements NewsRepository {
  final GuardianService _guardianService;
  final NewsDao _newsDao;

  NewsRepositoryImpl(this._guardianService, this._newsDao);

  @override
  Future<DataTransfer<List<NewsItem>>> getNews({required String query}) async {
    try {
      final httpResponse = await _guardianService.getNews(query: query);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<NewsItem> newsList = httpResponse.data;
        newsList.forEach((newsItem) async {
          await _newsDao.insertNews(newsItem.toJson());
        });

        return DataTransfer(data: httpResponse.data);
      } else {
        return DataTransfer(
            exception: DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.connectionError,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataTransfer(exception: e);
    }
  }
}
