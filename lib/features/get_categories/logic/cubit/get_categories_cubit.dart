import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../data/repositories/categoies_repo.dart';
import 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  final CategoiesRepo repository;
  GetCategoriesCubit(this.repository)
    : super(const GetCategoriesState.initial());

  Future<void> getCategories() async {
    emit(const GetCategoriesState.loading());
    final result = await repository.getCategories();
    result.when(
      success: (categories) {
        log("Categories count: ${categories.length}");
        emit(GetCategoriesState.success(categories));
      },
      failure: (error) {
        emit(GetCategoriesState.failure(error));
      },
    );
  }
}
