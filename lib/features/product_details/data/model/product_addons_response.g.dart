// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_addons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAddOns _$ProductAddOnsFromJson(Map<String, dynamic> json) =>
    ProductAddOns(
      productGlobalData: json['product'] == null
          ? null
          : ProductGlobalData.fromJson(json['product'] as Map<String, dynamic>),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => Block.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductAddOnsToJson(ProductAddOns instance) =>
    <String, dynamic>{
      'product': instance.productGlobalData,
      'blocks': instance.blocks,
    };

Block _$BlockFromJson(Map<String, dynamic> json) => Block(
  id: json['id'] as String?,
  name: json['name'] as String?,
  productAssociation: json['product_association'] as String?,
  excludeProducts: json['exclude_products'] as String?,
  userAssociation: json['user_association'] as String?,
  excludeUsers: json['exclude_users'] as String?,
  addons: (json['addons'] as List<dynamic>?)
      ?.map((e) => AddonToProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BlockToJson(Block instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'product_association': instance.productAssociation,
  'exclude_products': instance.excludeProducts,
  'user_association': instance.userAssociation,
  'exclude_users': instance.excludeUsers,
  'addons': instance.addons,
};

AddonToProduct _$AddonToProductFromJson(Map<String, dynamic> json) =>
    AddonToProduct(
      id: json['id'] as String?,
      title: json['title'] as String?,
      titleAr: json['title_ar'] as String?,
      minMaxRules: json['min_max_rules'] == null
          ? null
          : MinMaxRules.fromJson(json['min_max_rules'] as Map<String, dynamic>),
      required: json['required'] as bool?,
      isMultiChoise: json['IsMultiChoise'] as bool?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddonToProductToJson(AddonToProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_ar': instance.titleAr,
      'min_max_rules': instance.minMaxRules,
      'required': instance.required,
      'IsMultiChoise': instance.isMultiChoise,
      'options': instance.options,
    };

MinMaxRules _$MinMaxRulesFromJson(Map<String, dynamic> json) => MinMaxRules(
  min: (json['min'] as num?)?.toInt(),
  max: (json['max'] as num?)?.toInt(),
  exact: (json['exact'] as num?)?.toInt(),
);

Map<String, dynamic> _$MinMaxRulesToJson(MinMaxRules instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'exact': instance.exact,
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
  selectedByDefault: json['selected_by_default'] as bool?,
  required: json['required'] as bool?,
  addonEnabled: json['addon_enabled'] as bool?,
  label: json['label'] as String?,
  labelAr: json['label_ar'] as String?,
  price: json['price'] as String?,
  priceType: json['price_type'] as String?,
  priceMethod: json['price_method'] as String?,
  tooltip: json['tooltip'] as String?,
  description: json['description'] as String?,
  image: json['image'] as String?,
  showImage: json['show_image'] as bool?,
  labelInCart: json['label_in_cart'] as bool?,
  labelInCartOpt: json['label_in_cart_opt'] as String?,
);

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
  'selected_by_default': instance.selectedByDefault,
  'required': instance.required,
  'addon_enabled': instance.addonEnabled,
  'label': instance.label,
  'label_ar': instance.labelAr,
  'price': instance.price,
  'price_type': instance.priceType,
  'price_method': instance.priceMethod,
  'tooltip': instance.tooltip,
  'description': instance.description,
  'image': instance.image,
  'show_image': instance.showImage,
  'label_in_cart': instance.labelInCart,
  'label_in_cart_opt': instance.labelInCartOpt,
};

ProductGlobalData _$ProductGlobalDataFromJson(Map<String, dynamic> json) =>
    ProductGlobalData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameAr: json['name_ar'] as String?,
      price: json['price'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ProductGlobalDataToJson(ProductGlobalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'price': instance.price,
      'type': instance.type,
    };
