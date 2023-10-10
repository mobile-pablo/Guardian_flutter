import 'package:guardian_flutter/domain/model/news_item_fields/news_item_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_item.freezed.dart';
part 'news_item.g.dart';

@unfreezed
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
    required NewsItemFields fields,
  }) = _NewsItem;

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
}
