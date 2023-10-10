// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../core/models/news_item_dto.dart' as _i3;
import '../model/news_item.dart' as _i2;

/// {@template package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
/// Available mappings:
/// - `NewsItem` → `NewsItemDTO`.
/// - `NewsItemDTO` → `NewsItem`.
/// {@endtemplate}
class $NewsDTOMapper implements _i1.AutoMapprInterface {
  const $NewsDTOMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.NewsItem>() ||
            sourceTypeOf == _typeOf<_i2.NewsItem?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsItemDTO>() ||
            targetTypeOf == _typeOf<_i3.NewsItemDTO?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.NewsItemDTO>() ||
            sourceTypeOf == _typeOf<_i3.NewsItemDTO?>()) &&
        (targetTypeOf == _typeOf<_i2.NewsItem>() ||
            targetTypeOf == _typeOf<_i2.NewsItem?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:flutter_drift_1/domain/mapper/news_dto_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.NewsItem>() ||
            sourceTypeOf == _typeOf<_i2.NewsItem?>()) &&
        (targetTypeOf == _typeOf<_i3.NewsItemDTO>() ||
            targetTypeOf == _typeOf<_i3.NewsItemDTO?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$NewsItem_To__i3$NewsItemDTO((model as _i2.NewsItem?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.NewsItemDTO>() ||
            sourceTypeOf == _typeOf<_i3.NewsItemDTO?>()) &&
        (targetTypeOf == _typeOf<_i2.NewsItem>() ||
            targetTypeOf == _typeOf<_i2.NewsItem?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$NewsItemDTO_To__i2$NewsItem((model as _i3.NewsItemDTO?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.NewsItemDTO _map__i2$NewsItem_To__i3$NewsItemDTO(_i2.NewsItem? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping NewsItem → NewsItemDTO failed because NewsItem was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<NewsItem, NewsItemDTO> to handle null values during mapping.');
    }
    return _i3.NewsItemDTO(
      id: model.id,
      type: model.type,
      sectionId: model.sectionId,
      sectionName: model.sectionName,
      webPublicationDate: model.webPublicationDate,
      webTitle: model.webTitle,
      webUrl: model.webUrl,
      apiUrl: model.apiUrl,
      isHosted: model.isHosted,
      pillarId: model.pillarId,
      pillarName: model.pillarName,
    );
  }

  _i2.NewsItem _map__i3$NewsItemDTO_To__i2$NewsItem(_i3.NewsItemDTO? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping NewsItemDTO → NewsItem failed because NewsItemDTO was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<NewsItemDTO, NewsItem> to handle null values during mapping.');
    }
    return _i2.NewsItem(
      id: model.id,
      type: model.type,
      sectionId: model.sectionId,
      sectionName: model.sectionName,
      webPublicationDate: model.webPublicationDate,
      webTitle: model.webTitle,
      webUrl: model.webUrl,
      apiUrl: model.apiUrl,
      isHosted: model.isHosted,
      pillarId: model.pillarId,
      pillarName: model.pillarName,
    );
  }
}
