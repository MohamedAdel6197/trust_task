import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../api_services/cart_api_services.dart';
import '../model/add_to_cart_request.dart';
import '../model/add_to_cart_response.dart';
import '../model/guest_cart_response.dart';

class GuestCartRepo {
  final CartApiServices _cartApiServices;

  GuestCartRepo(this._cartApiServices);

  Future<ApiResult<GuestCartResponse>> getGuestCart(String guestId) async {
    try {
      final response = await _cartApiServices.getGuestCart(guestId);
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

  Future<ApiResult<AddToCartResponse>> addToCart(
    AddToCartRequest request,
  ) async {
    try {
      final response = await _cartApiServices.addToOrRemoveFromCart(request);
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
