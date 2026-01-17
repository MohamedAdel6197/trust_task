// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Failure _$FailureFromJson(Map<String, dynamic> json) =>
    Failure((json['errorCode'] as num).toInt(), json['message'] as String?);

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
  'errorCode': instance.errorCode,
  'message': instance.errorMessage,
};
