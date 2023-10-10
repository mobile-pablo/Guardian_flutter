import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_item_fields.freezed.dart';
part 'news_item_fields.g.dart';

@unfreezed
class NewsItemFields with _$NewsItemFields {
  const factory NewsItemFields({
    required String thumbnail,
  }) = _NewsItemFields;

  factory NewsItemFields.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFieldsFromJson(json);
}
