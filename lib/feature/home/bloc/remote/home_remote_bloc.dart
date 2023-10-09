import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/core/utils/data_transfer.dart';
import 'package:flutter_drift_1/domain/use_cases/get_news_use_case.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_event.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeRemoteBloc extends Bloc<HomeRemoteEvent, HomeRemoteState> {
  final GetNewsUseCase _getNewsUseCase;

  HomeRemoteBloc(this._getNewsUseCase) : super(const HomeRemoteNewsLoading()) {
    on<GetHomeNewsEvent>(onGetHomeNews);
  }

  void onGetHomeNews(
    GetHomeNewsEvent event,
    Emitter<HomeRemoteState> emit,
  ) async {
    final DataTransfer<List<NewsItemDTO>> dataTransfer =
        await _getNewsUseCase(event.query);

    if (dataTransfer.isSuccesful) {
      emit(HomeRemoteNewsDone(dataTransfer.data!));
    } else {
      emit(HomeRemoteNewsError(dataTransfer.exception!));
    }
  }
}
