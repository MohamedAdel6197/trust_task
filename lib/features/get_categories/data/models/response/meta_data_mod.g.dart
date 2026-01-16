// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaDataMod _$MetaDataModFromJson(Map<String, dynamic> json) => MetaDataMod(
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  value: json['value'],
);

Map<String, dynamic> _$MetaDataModToJson(MetaDataMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };
