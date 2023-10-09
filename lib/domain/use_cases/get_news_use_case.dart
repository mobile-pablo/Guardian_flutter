import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/core/utils/data_transfer.dart';
import 'package:flutter_drift_1/core/utils/usecase.dart';
import 'package:flutter_drift_1/domain/repository/news_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNewsUseCase
    implements UseCase<DataTransfer<List<NewsItemDTO>>, String> {
  /*
       I dont know yet how to inject via interface with injectable
       Unfortunatly for now its via Impl
  */
  final NewsRepository _newsRepository;

  GetNewsUseCase(this._newsRepository);

  @override
  Future<DataTransfer<List<NewsItemDTO>>> call(String params) =>
      _newsRepository.getNews(query: params);
}
