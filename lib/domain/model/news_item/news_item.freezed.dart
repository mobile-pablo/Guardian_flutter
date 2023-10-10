// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
mixin _$NewsItem {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get sectionId => throw _privateConstructorUsedError;
  set sectionId(String value) => throw _privateConstructorUsedError;
  String get sectionName => throw _privateConstructorUsedError;
  set sectionName(String value) => throw _privateConstructorUsedError;
  String get webPublicationDate => throw _privateConstructorUsedError;
  set webPublicationDate(String value) => throw _privateConstructorUsedError;
  String get webTitle => throw _privateConstructorUsedError;
  set webTitle(String value) => throw _privateConstructorUsedError;
  String get webUrl => throw _privateConstructorUsedError;
  set webUrl(String value) => throw _privateConstructorUsedError;
  String get apiUrl => throw _privateConstructorUsedError;
  set apiUrl(String value) => throw _privateConstructorUsedError;
  bool get isHosted => throw _privateConstructorUsedError;
  set isHosted(bool value) => throw _privateConstructorUsedError;
  String get pillarId => throw _privateConstructorUsedError;
  set pillarId(String value) => throw _privateConstructorUsedError;
  String get pillarName => throw _privateConstructorUsedError;
  set pillarName(String value) => throw _privateConstructorUsedError;
  NewsItemFields get fields => throw _privateConstructorUsedError;
  set fields(NewsItemFields value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call(
      {String id,
      String type,
      String sectionId,
      String sectionName,
      String webPublicationDate,
      String webTitle,
      String webUrl,
      String apiUrl,
      bool isHosted,
      String pillarId,
      String pillarName,
      NewsItemFields fields});

  $NewsItemFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? sectionId = null,
    Object? sectionName = null,
    Object? webPublicationDate = null,
    Object? webTitle = null,
    Object? webUrl = null,
    Object? apiUrl = null,
    Object? isHosted = null,
    Object? pillarId = null,
    Object? pillarName = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      webPublicationDate: null == webPublicationDate
          ? _value.webPublicationDate
          : webPublicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      webTitle: null == webTitle
          ? _value.webTitle
          : webTitle // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isHosted: null == isHosted
          ? _value.isHosted
          : isHosted // ignore: cast_nullable_to_non_nullable
              as bool,
      pillarId: null == pillarId
          ? _value.pillarId
          : pillarId // ignore: cast_nullable_to_non_nullable
              as String,
      pillarName: null == pillarName
          ? _value.pillarName
          : pillarName // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as NewsItemFields,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsItemFieldsCopyWith<$Res> get fields {
    return $NewsItemFieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsItemImplCopyWith<$Res>
    implements $NewsItemCopyWith<$Res> {
  factory _$$NewsItemImplCopyWith(
          _$NewsItemImpl value, $Res Function(_$NewsItemImpl) then) =
      __$$NewsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String sectionId,
      String sectionName,
      String webPublicationDate,
      String webTitle,
      String webUrl,
      String apiUrl,
      bool isHosted,
      String pillarId,
      String pillarName,
      NewsItemFields fields});

  @override
  $NewsItemFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$NewsItemImplCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$NewsItemImpl>
    implements _$$NewsItemImplCopyWith<$Res> {
  __$$NewsItemImplCopyWithImpl(
      _$NewsItemImpl _value, $Res Function(_$NewsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? sectionId = null,
    Object? sectionName = null,
    Object? webPublicationDate = null,
    Object? webTitle = null,
    Object? webUrl = null,
    Object? apiUrl = null,
    Object? isHosted = null,
    Object? pillarId = null,
    Object? pillarName = null,
    Object? fields = null,
  }) {
    return _then(_$NewsItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      webPublicationDate: null == webPublicationDate
          ? _value.webPublicationDate
          : webPublicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      webTitle: null == webTitle
          ? _value.webTitle
          : webTitle // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isHosted: null == isHosted
          ? _value.isHosted
          : isHosted // ignore: cast_nullable_to_non_nullable
              as bool,
      pillarId: null == pillarId
          ? _value.pillarId
          : pillarId // ignore: cast_nullable_to_non_nullable
              as String,
      pillarName: null == pillarName
          ? _value.pillarName
          : pillarName // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as NewsItemFields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsItemImpl with DiagnosticableTreeMixin implements _NewsItem {
  const _$NewsItemImpl(
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
      required this.pillarName,
      required this.fields});

  factory _$NewsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsItemImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String sectionId;
  @override
  final String sectionName;
  @override
  final String webPublicationDate;
  @override
  final String webTitle;
  @override
  final String webUrl;
  @override
  final String apiUrl;
  @override
  final bool isHosted;
  @override
  final String pillarId;
  @override
  final String pillarName;
  @override
  final NewsItemFields fields;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsItem(id: $id, type: $type, sectionId: $sectionId, sectionName: $sectionName, webPublicationDate: $webPublicationDate, webTitle: $webTitle, webUrl: $webUrl, apiUrl: $apiUrl, isHosted: $isHosted, pillarId: $pillarId, pillarName: $pillarName, fields: $fields)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('sectionId', sectionId))
      ..add(DiagnosticsProperty('sectionName', sectionName))
      ..add(DiagnosticsProperty('webPublicationDate', webPublicationDate))
      ..add(DiagnosticsProperty('webTitle', webTitle))
      ..add(DiagnosticsProperty('webUrl', webUrl))
      ..add(DiagnosticsProperty('apiUrl', apiUrl))
      ..add(DiagnosticsProperty('isHosted', isHosted))
      ..add(DiagnosticsProperty('pillarId', pillarId))
      ..add(DiagnosticsProperty('pillarName', pillarName))
      ..add(DiagnosticsProperty('fields', fields));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsItemImplCopyWith<_$NewsItemImpl> get copyWith =>
      __$$NewsItemImplCopyWithImpl<_$NewsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsItemImplToJson(
      this,
    );
  }
  
 @override
  set apiUrl(String value) => apiUrl = value;
  
  @override
  set id(String value) => id = value;
  
  @override
  set isHosted(bool value) => isHosted = value;
  @override
  set pillarId(String value) => pillarId = value;
  
  @override
  set pillarName(String value) => pillarName = value;
  
  @override
  set sectionId(String value) => sectionId = value;
  
  @override
  set sectionName(String value) => sectionName = value;
  
  @override
  set type(String value) => type = value;
  
  @override
  set webPublicationDate(String value) => webPublicationDate = value;
  
  @override
  set webTitle(String value) => webTitle = value;
  
  @override
  set webUrl(String value) => webUrl = value;

  @override
  set fields(NewsItemFields value) => fields = value;
}

abstract class _NewsItem implements NewsItem {
  const factory _NewsItem(
      {required String id,
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
      required NewsItemFields fields}) = _$NewsItemImpl;

  factory _NewsItem.fromJson(Map<String, dynamic> json) =
      _$NewsItemImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get type;
  set type(String value);
  @override
  String get sectionId;
  set sectionId(String value);
  @override
  String get sectionName;
  set sectionName(String value);
  @override
  String get webPublicationDate;
  set webPublicationDate(String value);
  @override
  String get webTitle;
  set webTitle(String value);
  @override
  String get webUrl;
  set webUrl(String value);
  @override
  String get apiUrl;
  set apiUrl(String value);
  @override
  bool get isHosted;
  set isHosted(bool value);
  @override
  String get pillarId;
  set pillarId(String value);
  @override
  String get pillarName;
  set pillarName(String value);
  @override
  NewsItemFields get fields;
  set fields(NewsItemFields value);
  @override
  @JsonKey(ignore: true)
  _$$NewsItemImplCopyWith<_$NewsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
