import 'package:guardian_flutter/core/models/news_item_dto.dart';

abstract class HomeLocalEvent {
  const HomeLocalEvent();
}

class InsertNewsItemEvent extends HomeLocalEvent {
  final NewsItemDTO newsItemDTO;
  InsertNewsItemEvent(this.newsItemDTO);
}

class UpdateNewsItemEvent extends HomeLocalEvent {
  final NewsItemDTO newsItemDTO;
  UpdateNewsItemEvent(this.newsItemDTO);
}

class RemoveNewsItemEvent extends HomeLocalEvent {
  final NewsItemDTO newsItemDTO;
  RemoveNewsItemEvent(this.newsItemDTO);
}
