import 'package:drift/drift.dart';

class NewsItemsEntity extends Table {
  TextColumn get id => text()();
  TextColumn get type => text()();
  TextColumn get sectionId => text()();
  TextColumn get sectionName => text()();
  TextColumn get webPublicationDate => text()();
  TextColumn get webTitle => text()();
  TextColumn get webUrl => text()();
  TextColumn get apiUrl => text()();
  BoolColumn get isHosted => boolean()();
  TextColumn get pillarId => text()();
  TextColumn get pillarName => text()();
  TextColumn get thumbnail => text()();
  TextColumn get standFirst => text()();
}
