// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Failure _$FailureFromJson(Map<String, dynamic> json) => Failure(
  json['code'] as String?,
  json['message'] as String?,
  json['data'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.errorDetails,
};
