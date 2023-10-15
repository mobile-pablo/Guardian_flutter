import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardian_flutter/feature/home/bloc/local/home_local_event.dart';
import 'package:guardian_flutter/feature/home/bloc/local/home_local_state.dart';
import 'package:guardian_flutter/domain/use_cases/insert_news_item_use_case.dart';
import 'package:guardian_flutter/domain/use_cases/remove_news_item_use_case.dart';
import 'package:guardian_flutter/domain/use_cases/update_news_item_use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable(env: <String>[Environment.prod, Environment.dev])
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
