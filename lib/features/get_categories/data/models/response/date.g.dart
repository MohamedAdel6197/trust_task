// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Date _$DateFromJson(Map<String, dynamic> json) => Date(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  timezoneType: (json['timezone_type'] as num?)?.toInt(),
  timezone: json['timezone'] as String?,
);

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'timezone_type': instance.timezoneType,
  'timezone': instance.timezone,
};
