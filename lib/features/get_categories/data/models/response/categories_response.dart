import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
  int id;
  @JsonKey(name: "name_en")
  String nameEn;
  @JsonKey(name: "name_ar")
  String nameAr;
  String image;
  List<Product> products;

  CategoriesResponse({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.image,
    required this.products,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);
}
