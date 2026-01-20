import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error_handler/error_handle.dart';
import '../../data/models/response/category.dart';

part 'get_categories_state.freezed.dart';

@freezed
class GetCategoriesState<T> with _$GetCategoriesState<T> {
  const factory GetCategoriesState.initial() = Initial;
  const factory GetCategoriesState.loading() = Loading;
  const factory GetCategoriesState.success(List<Category> categories) = Success;
  const factory GetCategoriesState.failure(ErrorHandler error) = Failure;
}
