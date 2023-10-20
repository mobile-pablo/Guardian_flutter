import 'package:flutter_cache_manager/flutter_cache_manager.dart';

Future<void> cleanCache() async => await DefaultCacheManager().emptyCache();