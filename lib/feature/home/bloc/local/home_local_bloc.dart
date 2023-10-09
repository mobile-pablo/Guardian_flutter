import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drift_1/feature/home/bloc/local/home_local_event.dart';
import 'package:flutter_drift_1/feature/home/bloc/local/home_local_state.dart';
import 'package:flutter_drift_1/domain/use_cases/insert_news_item_use_case.dart';
import 'package:flutter_drift_1/domain/use_cases/remove_news_item_use_case.dart';
import 'package:flutter_drift_1/domain/use_cases/update_news_item_use_case.dart';

class HomeLocalBloc extends Bloc<HomeLocalEvent, HomeLocalState> {
  final InsertNewsItemUseCase _insertNewsItemUseCase;
  final RemoveNewsItemUseCase _removeNewsItemUseCase;
  final UpdateNewsItemUseCase _updateNewsItemUseCase;

  HomeLocalBloc(this._insertNewsItemUseCase, this._removeNewsItemUseCase,
      this._updateNewsItemUseCase)
      : super(const HomeLocalNewsLoading()) {
    on<InsertNewsItemEvent>(_onInsertNewsItemEvent);
    on<RemoveNewsItemEvent>(_onRemoveNewsItemEvent);
    on<UpdateNewsItemEvent>(_onUpdateNewsItemEvent);
  }

  void _onInsertNewsItemEvent(
      InsertNewsItemEvent event, Emitter<HomeLocalState> emit) async {
    await _insertNewsItemUseCase(event.newsItemDTO);
    emit(const HomeLocalNewsDone());
  }

  void _onRemoveNewsItemEvent(
      RemoveNewsItemEvent event, Emitter<HomeLocalState> emit) async {
    await _removeNewsItemUseCase(event.newsItemDTO);
    emit(const HomeLocalNewsDone());
  }

  void _onUpdateNewsItemEvent(
      UpdateNewsItemEvent event, Emitter<HomeLocalState> emit) async {
    await _updateNewsItemUseCase(event.newsItemDTO);
    emit(const HomeLocalNewsDone());
  }
}
