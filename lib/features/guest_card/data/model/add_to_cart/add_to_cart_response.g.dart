// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToOrRemoveFromCartResponse _$AddToOrRemoveFromCartResponseFromJson(
  Map<String, dynamic> json,
) => AddToOrRemoveFromCartResponse(
  message: json['message'] as String?,
  guestId: json['guest_id'] as String?,
);

Map<String, dynamic> _$AddToOrRemoveFromCartResponseToJson(
  AddToOrRemoveFromCartResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'guest_id': instance.guestId,
};
