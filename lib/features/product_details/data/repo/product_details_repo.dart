import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:trust_task/features/product_details/data/model/product_addons_response.dart'
    show ProductAddOns;

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../../../get_categories/data/models/response/product.dart';
import '../api_service/product_details_api_service.dart';

class ProductDetailsRepo {
  final ProductDetailsApiService _productDetailsApiService;

  ProductDetailsRepo(this._productDetailsApiService);

  Future<ApiResult<List<Product>>> getProductDetails(int productId) async {
    try {
      final response = await _productDetailsApiService.getProductDetails(
        productId,
      );
      return ApiResult.success(response);
    } catch (e, stackTrace) {
      log('Error type: ${e.runtimeType}');
      if (e is DioException) {
        log('Dio Error Type: ${e.type}');
        log('Dio Error Message: ${e.message}');
        log('Dio Error Response: ${e.response}');
      }
      log('Stack trace: $stackTrace');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<ProductAddOns>> getProductAddons(int productId) async {
    try {
      final response = await _productDetailsApiService.getProductAddons(
        productId,
      );
      return ApiResult.success(response);
    } catch (e, stackTrace) {
      log('Error type: ${e.runtimeType}');
      if (e is DioException) {
        log('Dio Error Type: ${e.type}');
        log('Dio Error Message: ${e.message}');
        log('Dio Error Response: ${e.response}');
      }
      log('Stack trace: $stackTrace');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
