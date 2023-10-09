import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_drift_1/storage/dao/news_dao.dart';
import 'package:flutter_drift_1/storage/dao/news_dao_impl.dart';
import 'package:flutter_drift_1/storage/entity/news_item_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'app_database.g.dart';

@DriftDatabase(tables: <Type>[NewsItemsEntity], daos: <Type>[NewsDaoImpl])
@injectable
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    Directory dbFolder = await getApplicationDocumentsDirectory();
    File file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
