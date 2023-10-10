import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:flutter_drift_1/core/models/news_item_dto.dart';
import 'package:flutter_drift_1/domain/model/news_item/news_item.dart';

import 'news_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<NewsItem, NewsItemDTO>(
      fields: [Field('thumbnail', custom: NewsDTOMapper.mapThumbnailToDTO)]),
])
class NewsDTOMapper extends $NewsDTOMapper {
  static String mapThumbnailToDTO(NewsItem item) => item.fields.thumbnail;
}
