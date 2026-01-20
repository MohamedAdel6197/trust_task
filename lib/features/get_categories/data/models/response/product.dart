import 'package:json_annotation/json_annotation.dart';

import 'date.dart';
import 'meta_data_mod.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  int? id;
  String? name;
  String? slug;
  @JsonKey(name: "date_created")
  Date? dateCreated;
  @JsonKey(name: "date_modified")
  Date? dateModified;
  String? status;
  bool? featured;
  @JsonKey(name: "catalog_visibility")
  String? catalogVisibility;
  String? description;
  @JsonKey(name: "short_description")
  String? shortDescription;
  String? sku;
  @JsonKey(name: "global_unique_id")
  String? globalUniqueId;
  String? price;
  @JsonKey(name: "regular_price")
  String? regularPrice;
  @JsonKey(name: "sale_price")
  String? salePrice;
  @JsonKey(name: "date_on_sale_from")
  dynamic dateOnSaleFrom;
  @JsonKey(name: "date_on_sale_to")
  dynamic dateOnSaleTo;
  @JsonKey(name: "total_sales")
  int? totalSales;
  @JsonKey(name: "tax_status")
  String? taxStatus;
  @JsonKey(name: "tax_class")
  String? taxClass;
  @JsonKey(name: "manage_stock")
  bool? manageStock;
  @JsonKey(name: "stock_quantity")
  dynamic stockQuantity;
  @JsonKey(name: "stock_status")
  String? stockStatus;
  String? backorders;
  @JsonKey(name: "low_stock_amount")
  String? lowStockAmount;
  @JsonKey(name: "sold_individually")
  bool? soldIndividually;
  String? weight;
  String? length;
  String? width;
  String? height;
  @JsonKey(name: "upsell_ids")
  List<dynamic>? upsellIds;
  @JsonKey(name: "cross_sell_ids")
  List<dynamic>? crossSellIds;
  @JsonKey(name: "parent_id")
  int? parentId;
  @JsonKey(name: "reviews_allowed")
  bool? reviewsAllowed;
  @JsonKey(name: "purchase_note")
  String? purchaseNote;
  dynamic attributes;
  @JsonKey(name: "default_attributes")
  dynamic defaultAttributes;
  @JsonKey(name: "menu_order")
  int? menuOrder;
  @JsonKey(name: "post_password")
  String? postPassword;
  bool? virtual;
  bool? downloadable;
  @JsonKey(name: "category_ids")
  List<int>? categoryIds;
  @JsonKey(name: "tag_ids")
  List<dynamic>? tagIds;
  @JsonKey(name: "brand_ids")
  List<dynamic>? brandIds;
  @JsonKey(name: "shipping_class_id")
  int? shippingClassId;
  List<dynamic>? downloads;
  @JsonKey(name: "image_id")
  String? imageId;
  @JsonKey(name: "gallery_image_ids")
  List<dynamic>? galleryImageIds;
  @JsonKey(name: "download_limit")
  int? downloadLimit;
  @JsonKey(name: "download_expiry")
  int? downloadExpiry;
  @JsonKey(name: "rating_counts")
  List<dynamic>? ratingCounts;
  @JsonKey(name: "average_rating")
  String? averageRating;
  @JsonKey(name: "review_count")
  int? reviewCount;
  @JsonKey(name: "cogs_value")
  dynamic cogsValue;
  @JsonKey(name: "meta_data")
  List<MetaDataMod>? metaData;
  @JsonKey(name: "name_en")
  String? nameEn;
  @JsonKey(name: "name_ar")
  String? nameAr;
  @JsonKey(name: "description_en")
  String? descriptionEn;
  @JsonKey(name: "description_ar")
  String? descriptionAr;
  String? image;
  @JsonKey(name: "price_tax")
  int? priceTax;
  @JsonKey(name: "price_tax_sale")
  int? priceTaxSale;
  int? points;
  @JsonKey(name: "on_sale")
  bool? onSale;
  @JsonKey(name: "related_ids")
  List<int>? relatedIds;
  String? type;
  @JsonKey(name: "related_products")
  List<int>? relatedProducts;

  Product({
    this.id,
    this.name,
    this.slug,
    this.dateCreated,
    this.dateModified,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.globalUniqueId,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleTo,
    this.totalSales,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.reviewsAllowed,
    this.purchaseNote,
    this.attributes,
    this.defaultAttributes,
    this.menuOrder,
    this.postPassword,
    this.virtual,
    this.downloadable,
    this.categoryIds,
    this.tagIds,
    this.brandIds,
    this.shippingClassId,
    this.downloads,
    this.imageId,
    this.galleryImageIds,
    this.downloadLimit,
    this.downloadExpiry,
    this.ratingCounts,
    this.averageRating,
    this.reviewCount,
    this.cogsValue,
    this.metaData,
    this.nameEn,
    this.nameAr,
    this.descriptionEn,
    this.descriptionAr,
    this.image,
    this.priceTax,
    this.priceTaxSale,
    this.points,
    this.onSale,
    this.relatedIds,
    this.type,
    this.relatedProducts,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
