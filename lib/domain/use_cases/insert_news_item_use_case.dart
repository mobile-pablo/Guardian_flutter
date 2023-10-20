import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/usecase.dart';
import 'package:guardian_flutter/domain/repository/news_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertNewsItemUseCase implements UseCase<void, NewsItemDTO> {
  final NewsRepository _newsRepository;

  InsertNewsItemUseCase(this._newsRepository);

  @override
  Future<void> call(NewsItemDTO params) => _newsRepository.insertNews(params);
}
