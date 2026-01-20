import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/get_categories/logic/cubit/get_categories_cubit.dart';
import '../../features/get_categories/presentation/pages/home_screen.dart';
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

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GetCategoriesCubit(getIt())..getCategories(),
            child: HomeScreen(locale: locale ?? Locale('en')),
          ),
        );
      default:
        return null;
    }
  }
}
