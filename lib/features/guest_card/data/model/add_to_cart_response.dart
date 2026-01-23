import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_response.g.dart';

@JsonSerializable()
class AddToCartResponse {
  String? message;
  @JsonKey(name: "guest_id")
  String? guestId;

  AddToCartResponse({this.message, this.guestId});
  factory AddToCartResponse.fromJson(Map<String, dynamic> json) =>
      _$AddToCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartResponseToJson(this);
}
