// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestCartResponse _$GuestCartResponseFromJson(Map<String, dynamic> json) =>
    GuestCartResponse(
      cartItems: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['total_price'] as String?,
      vat: json['vat'] as String?,
      totalPriceWithTax: json['total_price_with_tax'] as String?,
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPoints: json['total_points'] as String?,
    );

Map<String, dynamic> _$GuestCartResponseToJson(GuestCartResponse instance) =>
    <String, dynamic>{
      'cart_items': instance.cartItems,
      'total_price': instance.totalPrice,
      'vat': instance.vat,
      'total_price_with_tax': instance.totalPriceWithTax,
      'total_items': instance.totalItems,
      'total_points': instance.totalPoints,
    };

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
  productId: (json['product_id'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  productNameEn: json['product_name_en'] as String?,
  productNameAr: json['product_name_ar'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  price: json['price'] as String?,
  addonPrice: (json['addon_price'] as num?)?.toInt(),
  image: json['image'] as String?,
  addons: (json['addons'] as List<dynamic>?)
      ?.map((e) => Addon.fromJson(e as Map<String, dynamic>))
      .toList(),
  points: json['points'] as String?,
  total: json['total'] as String?,
);

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
  'product_id': instance.productId,
  'product_name': instance.productName,
  'product_name_en': instance.productNameEn,
  'product_name_ar': instance.productNameAr,
  'quantity': instance.quantity,
  'price': instance.price,
  'addon_price': instance.addonPrice,
  'image': instance.image,
  'addons': instance.addons,
  'points': instance.points,
  'total': instance.total,
};

Addon _$AddonFromJson(Map<String, dynamic> json) => Addon(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  price: json['price'] as String?,
);

Map<String, dynamic> _$AddonToJson(Addon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
};
