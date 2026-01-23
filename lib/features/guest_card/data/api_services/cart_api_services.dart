import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/string_constants.dart';
import '../model/add_to_cart_request.dart';
import '../model/add_to_cart_response.dart';
import '../model/guest_cart_response.dart';

part 'cart_api_services.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class CartApiServices {
  factory CartApiServices(Dio dio) = _CartApiServices;

  @GET(AppConstants.getGuestCart)
  Future<GuestCartResponse> getGuestCart(@Query("guest_id") String guestId);

  @POST(AppConstants.addToOrRemoveFromCart)
  Future<AddToCartResponse> addToOrRemoveFromCart(
    @Body() AddToCartRequest addToCartRequest,
  );
}
