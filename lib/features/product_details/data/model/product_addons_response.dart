import 'package:json_annotation/json_annotation.dart';

part 'product_addons_response.g.dart';

@JsonSerializable()
class ProductAddOns {
  @JsonKey(name: "product")
  ProductGlobalData? productGlobalData;
  @JsonKey(name: "blocks")
  List<Block>? blocks;

  ProductAddOns({this.productGlobalData, this.blocks});

  factory ProductAddOns.fromJson(Map<String, dynamic> json) =>
      _$ProductAddOnsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAddOnsToJson(this);
}

@JsonSerializable()
class Block {
  String? id;
  String? name;
  @JsonKey(name: "product_association")
  String? productAssociation;
  @JsonKey(name: "exclude_products")
  String? excludeProducts;
  @JsonKey(name: "user_association")
  String? userAssociation;
  @JsonKey(name: "exclude_users")
  String? excludeUsers;
  List<AddonToProduct>? addons;

  Block({
    this.id,
    this.name,
    this.productAssociation,
    this.excludeProducts,
    this.userAssociation,
    this.excludeUsers,
    this.addons,
  });

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  Map<String, dynamic> toJson() => _$BlockToJson(this);
}

@JsonSerializable()
class AddonToProduct {
  String? id;
  String? title;
  @JsonKey(name: "title_ar")
  String? titleAr;
  @JsonKey(name: "min_max_rules")
  MinMaxRules? minMaxRules;
  bool? required;
  @JsonKey(name: "IsMultiChoise")
  bool? isMultiChoise;
  List<Option>? options;

  AddonToProduct({
    this.id,
    this.title,
    this.titleAr,
    this.minMaxRules,
    this.required,
    this.isMultiChoise,
    this.options,
  });

  factory AddonToProduct.fromJson(Map<String, dynamic> json) =>
      _$AddonToProductFromJson(json);

  Map<String, dynamic> toJson() => _$AddonToProductToJson(this);
}

@JsonSerializable()
class MinMaxRules {
  int? min;
  int? max;
  int? exact;

  MinMaxRules({this.min, this.max, this.exact});

  factory MinMaxRules.fromJson(Map<String, dynamic> json) =>
      _$MinMaxRulesFromJson(json);

  Map<String, dynamic> toJson() => _$MinMaxRulesToJson(this);
}

@JsonSerializable()
class Option {
  @JsonKey(name: "selected_by_default")
  bool? selectedByDefault;
  bool? required;
  @JsonKey(name: "addon_enabled")
  bool? addonEnabled;
  String? label;
  @JsonKey(name: "label_ar")
  String? labelAr;
  String? price;
  @JsonKey(name: "price_type")
  String? priceType;
  @JsonKey(name: "price_method")
  String? priceMethod;
  String? tooltip;
  String? description;
  String? image;
  @JsonKey(name: "show_image")
  bool? showImage;
  @JsonKey(name: "label_in_cart")
  bool? labelInCart;
  @JsonKey(name: "label_in_cart_opt")
  String? labelInCartOpt;

  Option({
    this.selectedByDefault,
    this.required,
    this.addonEnabled,
    this.label,
    this.labelAr,
    this.price,
    this.priceType,
    this.priceMethod,
    this.tooltip,
    this.description,
    this.image,
    this.showImage,
    this.labelInCart,
    this.labelInCartOpt,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable()
class ProductGlobalData {
  int? id;
  String? name;
  @JsonKey(name: "name_ar")
  String? nameAr;
  String? price;
  String? type;

  ProductGlobalData({this.id, this.name, this.nameAr, this.price, this.type});

  factory ProductGlobalData.fromJson(Map<String, dynamic> json) =>
      _$ProductGlobalDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGlobalDataToJson(this);
}
