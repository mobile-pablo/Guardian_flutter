import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_item.freezed.dart';

@freezed
class NewsItem with _$NewsItem {
  const factory NewsItem({
    required String id,
    required String type,
    required String sectionId,
    required String sectionName,
    required String webPublicationDate,
    required String webTitle,
    required String webUrl,
    required String apiUrl,
    required bool isHosted,
    required String pillarId,
    required String pillarName,
  }) = _NewsItem;

  factory NewsItem.fromJson(Map<String,Object?> json) => _$NewsItemFromJson(json);
}