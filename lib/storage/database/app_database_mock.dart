
import 'package:drift/drift.dart';
import 'package:guardian_flutter/storage/dao/news_dao.dart';
import 'package:guardian_flutter/storage/dao/news_dao_mock.dart';
import 'package:guardian_flutter/storage/database/app_database.dart';
import 'package:guardian_flutter/storage/entity/news_item_entity.dart';
import 'package:injectable/injectable.dart';
part 'app_database_mock.g.dart';

@DriftDatabase(tables: <Type>[NewsItemsEntity], daos: <Type>[NewsDaoMock])
@Injectable(env: <String>[Environment.test])
class MockAppDatabase extends _$MockAppDatabase {
  MockAppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

}
