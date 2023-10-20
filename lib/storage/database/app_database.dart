import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/dao/news_dao_impl.dart';
import 'package:guardian_flutter/storage/entity/news_item_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'app_database.g.dart';

@DriftDatabase(tables: <Type>[NewsItemsEntity], daos: <Type>[NewsDaoImpl])
@injectable
class AppDatabase extends _$AppDatabase {
  AppDatabase(DatabaseConnection q) : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          for (var table in allTables) {
            await m.deleteTable(table.actualTableName);
            await m.createTable(table);
          }
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    Directory dbFolder = await getApplicationDocumentsDirectory();
    File file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
