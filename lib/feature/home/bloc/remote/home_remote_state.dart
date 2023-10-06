import 'package:equatable/equatable.dart';
import 'package:flutter_drift_1/core/models/news_item_dto.dart';

abstract class HomeRemoteState extends Equatable {
  final List<NewsItemDTO>? news;
  final Exception? error;

  const HomeRemoteState({this.news, this.error});

  @override
  List<Object?> get props => <Object?>[news!, error];

}

class HomeRemoteNewsLoading extends HomeRemoteState {
  const HomeRemoteNewsLoading();
}

class HomeRemoteNewsDone extends HomeRemoteState {
  const HomeRemoteNewsDone(List<NewsItemDTO> news) : super(news: news);
}

class HomeRemoteNewsError extends HomeRemoteState {
  const HomeRemoteNewsError(Exception error) : super(error: error);
}
