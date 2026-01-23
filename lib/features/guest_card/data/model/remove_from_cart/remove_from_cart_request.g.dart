// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveFromCartRequest _$RemoveFromCartRequestFromJson(
  Map<String, dynamic> json,
) => RemoveFromCartRequest(
  guestId: json['guest_id'] as String,
  productId: (json['product_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$RemoveFromCartRequestToJson(
  RemoveFromCartRequest instance,
) => <String, dynamic>{
  'guest_id': instance.guestId,
  'product_id': instance.productId,
  'quantity': instance.quantity,
};
