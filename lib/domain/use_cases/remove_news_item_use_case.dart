import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/usecase.dart';
import 'package:guardian_flutter/domain/repository/news_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(env: <String>[Environment.prod, Environment.dev])
class RemoveNewsItemUseCase extends UseCase<void, NewsItemDTO> {
  final NewsRepository _newsRepository;

  RemoveNewsItemUseCase(this._newsRepository);

  @override
  Future<void> call(NewsItemDTO params) => _newsRepository.removeNews(params);
}
