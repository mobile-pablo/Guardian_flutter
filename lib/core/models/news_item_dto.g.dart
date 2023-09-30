// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsItemDTOImpl _$$NewsItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$NewsItemDTOImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      sectionId: json['sectionId'] as String,
      sectionName: json['sectionName'] as String,
      webPublicationDate: json['webPublicationDate'] as String,
      webTitle: json['webTitle'] as String,
      webUrl: json['webUrl'] as String,
      apiUrl: json['apiUrl'] as String,
      isHosted: json['isHosted'] as bool,
      pillarId: json['pillarId'] as String,
      pillarName: json['pillarName'] as String,
    );

Map<String, dynamic> _$$NewsItemDTOImplToJson(_$NewsItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'sectionId': instance.sectionId,
      'sectionName': instance.sectionName,
      'webPublicationDate': instance.webPublicationDate,
      'webTitle': instance.webTitle,
      'webUrl': instance.webUrl,
      'apiUrl': instance.apiUrl,
      'isHosted': instance.isHosted,
      'pillarId': instance.pillarId,
      'pillarName': instance.pillarName,
    };
