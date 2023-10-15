// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:guardian_flutter/core/const/news_service_const.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/data_transfer.dart';
import 'package:guardian_flutter/domain/mapper/news_dto_mapper.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';
import 'package:guardian_flutter/domain/repository/news_repository.dart';
import 'package:guardian_flutter/networking/service/guardian_service.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';

@Injectable(
  as: NewsRepository,
  env: <String>[Environment.prod, Environment.dev],
)
class NewsRepositoryImpl implements NewsRepository {
  final GuardianService _guardianService;
  final NewsDao _newsDao;
  final NewsDTOMapper _newsDTOMapper = NewsDTOMapper();

  NewsRepositoryImpl(this._guardianService, this._newsDao);

  @override
  Future<DataTransfer<List<NewsItemDTO>>> getNews(
      {required String query}) async {
    try {
      final HttpResponse<List<NewsItem>> httpResponse = await _guardianService
          .getNews(query: query, showFields: thumbnailAndTrailText);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<NewsItem> newsList = httpResponse.data;

        List<NewsItemDTO> newsListDTO = newsList
            .map((NewsItem e) =>
                _newsDTOMapper.convert<NewsItem, NewsItemDTO>(e))
            .toList();

        newsListDTO.forEach((NewsItemDTO newsItemDTO) async {
          await _newsDao.insertNews(newsItemDTO);
        });

        return DataTransfer<List<NewsItemDTO>>(data: newsListDTO);
      } else {
        return DataTransfer<List<NewsItemDTO>>(
            exception: DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.connectionError,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataTransfer<List<NewsItemDTO>>(exception: e);
    }
  }

  @override
  Future<void> insertNews(NewsItemDTO newsItemDTO) =>
      _newsDao.insertNews(newsItemDTO);

  @override
  Future<void> updateNews(NewsItemDTO newsItemDTO) =>
      _newsDao.updateNews(newsItemDTO);

  @override
  Future<void> removeNews(NewsItemDTO newsItemDTO) =>
      _newsDao.removeNews(newsItemDTO);
}
