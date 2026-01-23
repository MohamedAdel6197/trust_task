import 'package:json_annotation/json_annotation.dart';

part 'guest_cart_response.g.dart';

@JsonSerializable()
class GuestCartResponse {
  @JsonKey(name: "cart_items")
  List<CartItem>? cartItems;
  @JsonKey(name: "total_price")
  String? totalPrice;
  String? vat;
  @JsonKey(name: "total_price_with_tax")
  String? totalPriceWithTax;
  @JsonKey(name: "total_items")
  int? totalItems;
  @JsonKey(name: "total_points")
  String? totalPoints;

  GuestCartResponse({
    this.cartItems,
    this.totalPrice,
    this.vat,
    this.totalPriceWithTax,
    this.totalItems,
    this.totalPoints,
  });

  factory GuestCartResponse.fromJson(Map<String, dynamic> json) =>
      _$GuestCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GuestCartResponseToJson(this);
}

@JsonSerializable()
class CartItem {
  @JsonKey(name: "product_id")
  int? productId;
  @JsonKey(name: "product_name")
  String? productName;
  @JsonKey(name: "product_name_en")
  String? productNameEn;
  @JsonKey(name: "product_name_ar")
  String? productNameAr;
  int? quantity;
  String? price;
  @JsonKey(name: "addon_price")
  int? addonPrice;
  String? image;
  List<Addon>? addons;
  String? points;
  String? total;

  CartItem({
    this.productId,
    this.productName,
    this.productNameEn,
    this.productNameAr,
    this.quantity,
    this.price,
    this.addonPrice,
    this.image,
    this.addons,
    this.points,
    this.total,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}

@JsonSerializable()
class Addon {
  int? id;
  String? name;
  String? price;

  Addon({this.id, this.name, this.price});

  factory Addon.fromJson(Map<String, dynamic> json) => _$AddonFromJson(json);

  Map<String, dynamic> toJson() => _$AddonToJson(this);
}
