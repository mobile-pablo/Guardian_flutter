// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database_mock.dart';

// ignore_for_file: type=lint


abstract class _$MockAppDatabase extends GeneratedDatabase {
  _$MockAppDatabase(QueryExecutor e) : super(e);
  late final $NewsItemsEntityTable newsItemsEntity =
      $NewsItemsEntityTable(this);
  late final NewsDao newsDaoImpl = NewsDaoMock(this as MockAppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [newsItemsEntity];
}
