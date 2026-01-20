import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../datasources/api_get_categories_service.dart';
import '../models/response/category.dart';

class CategoiesRepo {
  final ApiGetCategoriesService apiGetCategoriesService;
  CategoiesRepo(this.apiGetCategoriesService);
  Future<ApiResult<List<Category>>> getCategories() async {
    try {
      final categoriesResponse = await apiGetCategoriesService.getCategories();
      final categoryList = categoriesResponse;
      log('Categories Response: ${categoryList.length} items');
      return ApiResult.success(categoryList);
    } catch (e, stackTrace) {
      log('Error fetching categories: $e');
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
