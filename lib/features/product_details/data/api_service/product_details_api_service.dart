import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/string_constants.dart';
import '../model/product_addons_response.dart';

part 'product_details_api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ProductDetailsApiService {
  factory ProductDetailsApiService(Dio dio) = _ProductDetailsApiService;

  /*
  @GET(AppConstants.getProductDetails)
  Future<List<Product>> getProductDetails(@Query('product_id') int productId);
  */

  @GET(AppConstants.getProductAddons)
  Future<ProductAddOns> getProductAddons(@Query('product_id2') int productId);
}
