import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/core/utils/usecase.dart';
import 'package:flutter_drift_1/domain/repository/news_repository.dart';

class InsertNewsItemUseCase extends UseCase<void, NewsItemDTO> {
  final NewsRepository _newsRepository;

  InsertNewsItemUseCase(this._newsRepository);

  @override
  Future<void> call(NewsItemDTO newsItemDTO) =>
      _newsRepository.insertNews(newsItemDTO);
}
