import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trust_task/features/get_categories/data/datasources/api_get_categories_service.dart';

import '../../features/get_categories/data/repositories/categoies_repo.dart';
import '../../features/get_categories/logic/cubit/get_categories_cubit.dart';
import '../../features/start_order/data/api_service.dart/api_guest_service.dart';
import '../../features/start_order/data/repositories/guest_repo.dart';
import '../../features/start_order/logic/cubit/get_guest_cubit.dart';
import '../networking/dio/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiGuestService>(() => ApiGuestService(dio));

  // get guest id
  getIt.registerLazySingleton<GuestRepo>(() => GuestRepo(getIt()));
  getIt.registerFactory<GetGuestCubit>(() => GetGuestCubit(getIt()));

  // home
  getIt.registerLazySingleton<ApiGetCategoriesService>(
    () => ApiGetCategoriesService(dio),
  );
  getIt.registerLazySingleton<CategoiesRepo>(() => CategoiesRepo(getIt()));
  getIt.registerFactory<GetCategoriesCubit>(() => GetCategoriesCubit(getIt()));
}
