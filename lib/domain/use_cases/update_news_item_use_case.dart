

import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/core/utils/usecase.dart';
import 'package:flutter_drift_1/domain/repository/news_repository.dart';

class UpdateNewsItemUseCase extends UseCase<void, NewsItemDTO> {
  final NewsRepository _newsRepository;

  UpdateNewsItemUseCase(this._newsRepository);

  @override
  Future<void> call(NewsItemDTO params) =>
      _newsRepository.updateNews(params);
}