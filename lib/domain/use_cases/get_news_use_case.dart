import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/data_transfer.dart';
import 'package:guardian_flutter/core/utils/usecase.dart';
import 'package:guardian_flutter/domain/repository/news_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNewsUseCase
    implements UseCase<DataTransfer<List<NewsItemDTO>>, String> {
  final NewsRepository _newsRepository;

  GetNewsUseCase(this._newsRepository);

  @override
  Future<DataTransfer<List<NewsItemDTO>>> call(String params) =>
      _newsRepository.getNews(query: params);
}
