import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_request.g.dart';

@JsonSerializable()
class AddToCartRequest {
  @JsonKey(name: "guest_id")
  String? guestId;
  List<Item>? items;

  AddToCartRequest({this.guestId, this.items});

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartRequestToJson(this);
}

@JsonSerializable()
class Item {
  @JsonKey(name: "product_id")
  int? productId;
  int? quantity;
  List<AddonInRequest>? addons;

  Item({this.productId, this.quantity, this.addons});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class AddonInRequest {
  int? id;
  String? name;
  String? price;

  AddonInRequest({this.id, this.name, this.price});

  factory AddonInRequest.fromJson(Map<String, dynamic> json) =>
      _$AddonInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddonInRequestToJson(this);
}
