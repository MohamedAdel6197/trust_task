import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trust_task/features/get_categories/data/datasources/api_get_categories_service.dart';

import '../../features/get_categories/data/repositories/categoies_repo.dart';
import '../../features/get_categories/logic/cubit/get_categories_cubit.dart';
import '../../features/guest_card/data/api_services/cart_api_services.dart';
import '../../features/guest_card/data/repo/guest_cart_repo.dart';
import '../../features/guest_card/logic/cubit/guest_card_cubit.dart';
import '../../features/product_details/data/api_service/product_details_api_service.dart';
import '../../features/product_details/data/repo/product_details_repo.dart';
import '../../features/product_details/logic/cubit/product_detail_cubit.dart';
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

  // product details
  getIt.registerLazySingleton<ProductDetailsApiService>(
    () => ProductDetailsApiService(dio),
  );
  getIt.registerLazySingleton<ProductDetailsRepo>(
    () => ProductDetailsRepo(getIt()),
  );
  getIt.registerFactory<ProductDetailsCubit>(
    () => ProductDetailsCubit(getIt()),
  );

  // guest cart
  getIt.registerLazySingleton<CartApiServices>(() => CartApiServices(dio));
  getIt.registerLazySingleton<GuestCartRepo>(() => GuestCartRepo(getIt()));
  getIt.registerLazySingleton<GuestCardCubit>(() => GuestCardCubit(getIt()));
}
