import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:guardian_flutter/domain/model/news_item/news_item.dart';

Future<List<NewsItem>> getGuardianMockNewsItems() async {

  final String guardianSearchJson =
      await rootBundle.loadString('assets/json/guardian_search.json');
  final Map<String, dynamic> jsonmap = jsonDecode(guardianSearchJson);
  List<NewsItem> newsItems = await jsonmap['response']['results']
      .map<NewsItem>(
        (dynamic i) => NewsItem.fromJson(i as Map<String, dynamic>),
      )
      .toList();
  return newsItems;
}
