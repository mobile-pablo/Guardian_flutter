// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NewsItemsTable extends NewsItems
    with TableInfo<$NewsItemsTable, NewsItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<String> sectionId = GeneratedColumn<String>(
      'section_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionNameMeta =
      const VerificationMeta('sectionName');
  @override
  late final GeneratedColumn<String> sectionName = GeneratedColumn<String>(
      'section_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webPublicationDateMeta =
      const VerificationMeta('webPublicationDate');
  @override
  late final GeneratedColumn<String> webPublicationDate =
      GeneratedColumn<String>('web_publication_date', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webTitleMeta =
      const VerificationMeta('webTitle');
  @override
  late final GeneratedColumn<String> webTitle = GeneratedColumn<String>(
      'web_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webUrlMeta = const VerificationMeta('webUrl');
  @override
  late final GeneratedColumn<String> webUrl = GeneratedColumn<String>(
      'web_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _apiUrlMeta = const VerificationMeta('apiUrl');
  @override
  late final GeneratedColumn<String> apiUrl = GeneratedColumn<String>(
      'api_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isHostedMeta =
      const VerificationMeta('isHosted');
  @override
  late final GeneratedColumn<bool> isHosted = GeneratedColumn<bool>(
      'is_hosted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_hosted" IN (0, 1))'));
  static const VerificationMeta _pillarIdMeta =
      const VerificationMeta('pillarId');
  @override
  late final GeneratedColumn<String> pillarId = GeneratedColumn<String>(
      'pillar_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pillarNameMeta =
      const VerificationMeta('pillarName');
  @override
  late final GeneratedColumn<String> pillarName = GeneratedColumn<String>(
      'pillar_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        sectionId,
        sectionName,
        webPublicationDate,
        webTitle,
        webUrl,
        apiUrl,
        isHosted,
        pillarId,
        pillarName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news_items';
  @override
  VerificationContext validateIntegrity(Insertable<NewsItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('section_name')) {
      context.handle(
          _sectionNameMeta,
          sectionName.isAcceptableOrUnknown(
              data['section_name']!, _sectionNameMeta));
    } else if (isInserting) {
      context.missing(_sectionNameMeta);
    }
    if (data.containsKey('web_publication_date')) {
      context.handle(
          _webPublicationDateMeta,
          webPublicationDate.isAcceptableOrUnknown(
              data['web_publication_date']!, _webPublicationDateMeta));
    } else if (isInserting) {
      context.missing(_webPublicationDateMeta);
    }
    if (data.containsKey('web_title')) {
      context.handle(_webTitleMeta,
          webTitle.isAcceptableOrUnknown(data['web_title']!, _webTitleMeta));
    } else if (isInserting) {
      context.missing(_webTitleMeta);
    }
    if (data.containsKey('web_url')) {
      context.handle(_webUrlMeta,
          webUrl.isAcceptableOrUnknown(data['web_url']!, _webUrlMeta));
    } else if (isInserting) {
      context.missing(_webUrlMeta);
    }
    if (data.containsKey('api_url')) {
      context.handle(_apiUrlMeta,
          apiUrl.isAcceptableOrUnknown(data['api_url']!, _apiUrlMeta));
    } else if (isInserting) {
      context.missing(_apiUrlMeta);
    }
    if (data.containsKey('is_hosted')) {
      context.handle(_isHostedMeta,
          isHosted.isAcceptableOrUnknown(data['is_hosted']!, _isHostedMeta));
    } else if (isInserting) {
      context.missing(_isHostedMeta);
    }
    if (data.containsKey('pillar_id')) {
      context.handle(_pillarIdMeta,
          pillarId.isAcceptableOrUnknown(data['pillar_id']!, _pillarIdMeta));
    } else if (isInserting) {
      context.missing(_pillarIdMeta);
    }
    if (data.containsKey('pillar_name')) {
      context.handle(
          _pillarNameMeta,
          pillarName.isAcceptableOrUnknown(
              data['pillar_name']!, _pillarNameMeta));
    } else if (isInserting) {
      context.missing(_pillarNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  NewsItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NewsItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}section_id'])!,
      sectionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}section_name'])!,
      webPublicationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}web_publication_date'])!,
      webTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}web_title'])!,
      webUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}web_url'])!,
      apiUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}api_url'])!,
      isHosted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_hosted'])!,
      pillarId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pillar_id'])!,
      pillarName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pillar_name'])!,
    );
  }

  @override
  $NewsItemsTable createAlias(String alias) {
    return $NewsItemsTable(attachedDatabase, alias);
  }
}

class NewsItem extends DataClass implements Insertable<NewsItem> {
  final String id;
  final String type;
  final String sectionId;
  final String sectionName;
  final String webPublicationDate;
  final String webTitle;
  final String webUrl;
  final String apiUrl;
  final bool isHosted;
  final String pillarId;
  final String pillarName;
  const NewsItem(
      {required this.id,
      required this.type,
      required this.sectionId,
      required this.sectionName,
      required this.webPublicationDate,
      required this.webTitle,
      required this.webUrl,
      required this.apiUrl,
      required this.isHosted,
      required this.pillarId,
      required this.pillarName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['type'] = Variable<String>(type);
    map['section_id'] = Variable<String>(sectionId);
    map['section_name'] = Variable<String>(sectionName);
    map['web_publication_date'] = Variable<String>(webPublicationDate);
    map['web_title'] = Variable<String>(webTitle);
    map['web_url'] = Variable<String>(webUrl);
    map['api_url'] = Variable<String>(apiUrl);
    map['is_hosted'] = Variable<bool>(isHosted);
    map['pillar_id'] = Variable<String>(pillarId);
    map['pillar_name'] = Variable<String>(pillarName);
    return map;
  }

  NewsItemsCompanion toCompanion(bool nullToAbsent) {
    return NewsItemsCompanion(
      id: Value(id),
      type: Value(type),
      sectionId: Value(sectionId),
      sectionName: Value(sectionName),
      webPublicationDate: Value(webPublicationDate),
      webTitle: Value(webTitle),
      webUrl: Value(webUrl),
      apiUrl: Value(apiUrl),
      isHosted: Value(isHosted),
      pillarId: Value(pillarId),
      pillarName: Value(pillarName),
    );
  }

  factory NewsItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NewsItem(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      sectionId: serializer.fromJson<String>(json['sectionId']),
      sectionName: serializer.fromJson<String>(json['sectionName']),
      webPublicationDate:
          serializer.fromJson<String>(json['webPublicationDate']),
      webTitle: serializer.fromJson<String>(json['webTitle']),
      webUrl: serializer.fromJson<String>(json['webUrl']),
      apiUrl: serializer.fromJson<String>(json['apiUrl']),
      isHosted: serializer.fromJson<bool>(json['isHosted']),
      pillarId: serializer.fromJson<String>(json['pillarId']),
      pillarName: serializer.fromJson<String>(json['pillarName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
      'sectionId': serializer.toJson<String>(sectionId),
      'sectionName': serializer.toJson<String>(sectionName),
      'webPublicationDate': serializer.toJson<String>(webPublicationDate),
      'webTitle': serializer.toJson<String>(webTitle),
      'webUrl': serializer.toJson<String>(webUrl),
      'apiUrl': serializer.toJson<String>(apiUrl),
      'isHosted': serializer.toJson<bool>(isHosted),
      'pillarId': serializer.toJson<String>(pillarId),
      'pillarName': serializer.toJson<String>(pillarName),
    };
  }

  NewsItem copyWith(
          {String? id,
          String? type,
          String? sectionId,
          String? sectionName,
          String? webPublicationDate,
          String? webTitle,
          String? webUrl,
          String? apiUrl,
          bool? isHosted,
          String? pillarId,
          String? pillarName}) =>
      NewsItem(
        id: id ?? this.id,
        type: type ?? this.type,
        sectionId: sectionId ?? this.sectionId,
        sectionName: sectionName ?? this.sectionName,
        webPublicationDate: webPublicationDate ?? this.webPublicationDate,
        webTitle: webTitle ?? this.webTitle,
        webUrl: webUrl ?? this.webUrl,
        apiUrl: apiUrl ?? this.apiUrl,
        isHosted: isHosted ?? this.isHosted,
        pillarId: pillarId ?? this.pillarId,
        pillarName: pillarName ?? this.pillarName,
      );
  @override
  String toString() {
    return (StringBuffer('NewsItem(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('sectionId: $sectionId, ')
          ..write('sectionName: $sectionName, ')
          ..write('webPublicationDate: $webPublicationDate, ')
          ..write('webTitle: $webTitle, ')
          ..write('webUrl: $webUrl, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('isHosted: $isHosted, ')
          ..write('pillarId: $pillarId, ')
          ..write('pillarName: $pillarName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      type,
      sectionId,
      sectionName,
      webPublicationDate,
      webTitle,
      webUrl,
      apiUrl,
      isHosted,
      pillarId,
      pillarName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NewsItem &&
          other.id == this.id &&
          other.type == this.type &&
          other.sectionId == this.sectionId &&
          other.sectionName == this.sectionName &&
          other.webPublicationDate == this.webPublicationDate &&
          other.webTitle == this.webTitle &&
          other.webUrl == this.webUrl &&
          other.apiUrl == this.apiUrl &&
          other.isHosted == this.isHosted &&
          other.pillarId == this.pillarId &&
          other.pillarName == this.pillarName);
}

class NewsItemsCompanion extends UpdateCompanion<NewsItem> {
  final Value<String> id;
  final Value<String> type;
  final Value<String> sectionId;
  final Value<String> sectionName;
  final Value<String> webPublicationDate;
  final Value<String> webTitle;
  final Value<String> webUrl;
  final Value<String> apiUrl;
  final Value<bool> isHosted;
  final Value<String> pillarId;
  final Value<String> pillarName;
  final Value<int> rowid;
  const NewsItemsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.sectionName = const Value.absent(),
    this.webPublicationDate = const Value.absent(),
    this.webTitle = const Value.absent(),
    this.webUrl = const Value.absent(),
    this.apiUrl = const Value.absent(),
    this.isHosted = const Value.absent(),
    this.pillarId = const Value.absent(),
    this.pillarName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NewsItemsCompanion.insert({
    required String id,
    required String type,
    required String sectionId,
    required String sectionName,
    required String webPublicationDate,
    required String webTitle,
    required String webUrl,
    required String apiUrl,
    required bool isHosted,
    required String pillarId,
    required String pillarName,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        type = Value(type),
        sectionId = Value(sectionId),
        sectionName = Value(sectionName),
        webPublicationDate = Value(webPublicationDate),
        webTitle = Value(webTitle),
        webUrl = Value(webUrl),
        apiUrl = Value(apiUrl),
        isHosted = Value(isHosted),
        pillarId = Value(pillarId),
        pillarName = Value(pillarName);
  static Insertable<NewsItem> custom({
    Expression<String>? id,
    Expression<String>? type,
    Expression<String>? sectionId,
    Expression<String>? sectionName,
    Expression<String>? webPublicationDate,
    Expression<String>? webTitle,
    Expression<String>? webUrl,
    Expression<String>? apiUrl,
    Expression<bool>? isHosted,
    Expression<String>? pillarId,
    Expression<String>? pillarName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (sectionId != null) 'section_id': sectionId,
      if (sectionName != null) 'section_name': sectionName,
      if (webPublicationDate != null)
        'web_publication_date': webPublicationDate,
      if (webTitle != null) 'web_title': webTitle,
      if (webUrl != null) 'web_url': webUrl,
      if (apiUrl != null) 'api_url': apiUrl,
      if (isHosted != null) 'is_hosted': isHosted,
      if (pillarId != null) 'pillar_id': pillarId,
      if (pillarName != null) 'pillar_name': pillarName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NewsItemsCompanion copyWith(
      {Value<String>? id,
      Value<String>? type,
      Value<String>? sectionId,
      Value<String>? sectionName,
      Value<String>? webPublicationDate,
      Value<String>? webTitle,
      Value<String>? webUrl,
      Value<String>? apiUrl,
      Value<bool>? isHosted,
      Value<String>? pillarId,
      Value<String>? pillarName,
      Value<int>? rowid}) {
    return NewsItemsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      sectionId: sectionId ?? this.sectionId,
      sectionName: sectionName ?? this.sectionName,
      webPublicationDate: webPublicationDate ?? this.webPublicationDate,
      webTitle: webTitle ?? this.webTitle,
      webUrl: webUrl ?? this.webUrl,
      apiUrl: apiUrl ?? this.apiUrl,
      isHosted: isHosted ?? this.isHosted,
      pillarId: pillarId ?? this.pillarId,
      pillarName: pillarName ?? this.pillarName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (sectionName.present) {
      map['section_name'] = Variable<String>(sectionName.value);
    }
    if (webPublicationDate.present) {
      map['web_publication_date'] = Variable<String>(webPublicationDate.value);
    }
    if (webTitle.present) {
      map['web_title'] = Variable<String>(webTitle.value);
    }
    if (webUrl.present) {
      map['web_url'] = Variable<String>(webUrl.value);
    }
    if (apiUrl.present) {
      map['api_url'] = Variable<String>(apiUrl.value);
    }
    if (isHosted.present) {
      map['is_hosted'] = Variable<bool>(isHosted.value);
    }
    if (pillarId.present) {
      map['pillar_id'] = Variable<String>(pillarId.value);
    }
    if (pillarName.present) {
      map['pillar_name'] = Variable<String>(pillarName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsItemsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('sectionId: $sectionId, ')
          ..write('sectionName: $sectionName, ')
          ..write('webPublicationDate: $webPublicationDate, ')
          ..write('webTitle: $webTitle, ')
          ..write('webUrl: $webUrl, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('isHosted: $isHosted, ')
          ..write('pillarId: $pillarId, ')
          ..write('pillarName: $pillarName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NewsItemsTable newsItems = $NewsItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [newsItems];
}
