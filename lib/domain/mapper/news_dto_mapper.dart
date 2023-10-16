import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:guardian_flutter/core/models/news_item_dto.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';

import 'news_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<NewsItem, NewsItemDTO>(fields: <Field>[
    Field('thumbnail', custom: NewsDTOMapper.mapThumbnailToDTO),
    Field('trailText', custom: NewsDTOMapper.mapTrailTextToDTO)
  ]),
])
class NewsDTOMapper extends $NewsDTOMapper {
  static String mapThumbnailToDTO(NewsItem item) => item.fields.thumbnail;

  static String mapTrailTextToDTO(NewsItem item) => item.fields.trailText;
}
