import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  int? id;
  @JsonKey(name: "name_en")
  String? nameEn;
  @JsonKey(name: "name_ar")
  String? nameAr;
  String? image;
  List<Product>? products;

  Category({this.id, this.nameEn, this.nameAr, this.image, this.products});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
