import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_response.g.dart';

@JsonSerializable()
class AddToOrRemoveFromCartResponse {
  String? message;
  @JsonKey(name: "guest_id")
  String? guestId;

  AddToOrRemoveFromCartResponse({this.message, this.guestId});
  factory AddToOrRemoveFromCartResponse.fromJson(Map<String, dynamic> json) =>
      _$AddToOrRemoveFromCartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddToOrRemoveFromCartResponseToJson(this);
}
