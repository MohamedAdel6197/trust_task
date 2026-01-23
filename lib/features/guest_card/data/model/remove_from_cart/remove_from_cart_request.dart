import 'package:json_annotation/json_annotation.dart';

part 'remove_from_cart_request.g.dart';

@JsonSerializable()
class RemoveFromCartRequest {
  @JsonKey(name: "guest_id")
  String guestId;
  @JsonKey(name: "product_id")
  int productId;
  int quantity;

  RemoveFromCartRequest({
    required this.guestId,
    required this.productId,
    required this.quantity,
  });

  factory RemoveFromCartRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromCartRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RemoveFromCartRequestToJson(this);
}
