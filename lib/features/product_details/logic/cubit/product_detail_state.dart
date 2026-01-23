import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error_handler/error_handle.dart';
import '../../../get_categories/data/models/response/product.dart';
import '../../data/model/product_addons_response.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = _Initial;
  const factory ProductDetailState.loading() = _Loading;
  const factory ProductDetailState.success({
    required List<Product> products,
    ProductAddOns? productAddOns,
  }) = _Success;
  const factory ProductDetailState.failure(ErrorHandler error) = _Failure;
}
