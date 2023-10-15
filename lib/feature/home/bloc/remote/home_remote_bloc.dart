import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/core/utils/data_transfer.dart';
import 'package:guardian_flutter/domain/use_cases/get_news_use_case.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_event.dart';
import 'package:guardian_flutter/feature/home/bloc/remote/home_remote_state.dart';
import 'package:injectable/injectable.dart';

@Injectable(env: <String>[Environment.prod, Environment.dev, Environment.test])
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
