// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequest _$AddToCartRequestFromJson(Map<String, dynamic> json) =>
    AddToCartRequest(
      guestId: json['guest_id'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddToCartRequestToJson(AddToCartRequest instance) =>
    <String, dynamic>{'guest_id': instance.guestId, 'items': instance.items};

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
  productId: (json['product_id'] as num?)?.toInt(),
  quantity: (json['quantity'] as num?)?.toInt(),
  addons: (json['addons'] as List<dynamic>?)
      ?.map((e) => AddonInRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
  'product_id': instance.productId,
  'quantity': instance.quantity,
  'addons': instance.addons,
};

AddonInRequest _$AddonInRequestFromJson(Map<String, dynamic> json) =>
    AddonInRequest(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$AddonInRequestToJson(AddonInRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
