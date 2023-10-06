import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drift_1/domain/use_cases/get_news_use_case.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_event.dart';
import 'package:flutter_drift_1/feature/home/bloc/remote/home_remote_state.dart';

class HomeRemoteBloc extends Bloc<HomeRemoteEvent, HomeRemoteState> {
  final GetNewsUseCase _getNewsUseCase;

  HomeRemoteBloc(this._getNewsUseCase) : super(const HomeRemoteNewsLoading()) {
    on<GetHomeNews>(onGetHomeNews);
  }

  void onGetHomeNews(
    GetHomeNews event,
    Emitter<HomeRemoteState> emit,
  ) async {
    final dataTransfer = await _getNewsUseCase(event.query);

    if(dataTransfer.isSuccesful) {
      emit(HomeRemoteNewsDone(dataTransfer.data!));
    } else {
      emit(HomeRemoteNewsError(dataTransfer.exception!));
    }
  }
}
