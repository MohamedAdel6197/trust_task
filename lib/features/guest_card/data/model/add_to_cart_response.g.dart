// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartResponse _$AddToCartResponseFromJson(Map<String, dynamic> json) =>
    AddToCartResponse(
      message: json['message'] as String?,
      guestId: json['guest_id'] as String?,
    );

Map<String, dynamic> _$AddToCartResponseToJson(AddToCartResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'guest_id': instance.guestId,
    };
