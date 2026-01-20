import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/string_constants.dart';
import '../models/response/category.dart';

part 'api_get_categories_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiGetCategoriesService {
  factory ApiGetCategoriesService(Dio dio) = _ApiGetCategoriesService;
  @GET(AppConstants.getCategories)
  Future<List<Category>> getCategories();
}
