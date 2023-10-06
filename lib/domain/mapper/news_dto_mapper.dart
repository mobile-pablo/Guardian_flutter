import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import 'news_dto_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<NewsItemDTO, NewsItem>(),
])
class NewsDTOMapper extends $NewsDTOMapper {}
