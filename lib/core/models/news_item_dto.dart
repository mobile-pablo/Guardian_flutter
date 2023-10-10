import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_item_dto.freezed.dart';
part 'news_item_dto.g.dart';

@unfreezed
class NewsItemDTO with _$NewsItemDTO {
  const factory NewsItemDTO({
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
    required String thumbnail,
    required String trailText,
  }) = _NewsItemDTO;

  factory NewsItemDTO.fromJson(Map<String, dynamic> json) =>
      _$NewsItemDTOFromJson(json);
}
