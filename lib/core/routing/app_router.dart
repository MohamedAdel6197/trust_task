import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/get_categories/data/models/response/product.dart';
import '../../features/get_categories/logic/cubit/get_categories_cubit.dart';
import '../../features/get_categories/presentation/pages/home_screen.dart';
import '../../features/guest_card/presentation/screens/guest_cart_screen.dart';
import '../../features/product_details/logic/cubit/product_detail_cubit.dart';
import '../../features/product_details/presentation/screen/product_details.dart';
import '../../features/start_order/logic/cubit/get_guest_cubit.dart';
import '../../features/start_order/presentation/pages/start_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Locale? locale;
  Function(Locale)? changeLocale;

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.startScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<GetGuestCubit>(
            create: (context) => getIt<GetGuestCubit>(),
            child: StartOrder(
              locale: locale ?? const Locale('en'),
              changeLocale: changeLocale ?? (Locale locale) {},
            ),
          ),
        );
      //
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GetCategoriesCubit(getIt())..getCategories(),
            child: HomeScreen(locale: locale ?? Locale('en')),
          ),
        );
      //
      case Routes.productDetails:
        final product = settings.arguments as Product;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ProductDetailsCubit(getIt())
              ..setProduct(product)
              // ..getProductDetails(product.id!)
              ..getProductAddons(product.id!),
            child: ProductDetails(product: product),
          ),
        );
      //
      case Routes.guestCart:
        return MaterialPageRoute(builder: (_) => const GuestCartScreen());
      default:
        return null;
    }
  }
}
