import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localingo/localingo.dart';
import 'package:trust_task/core/routing/routes.dart';

import 'core/constants/string_constants.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper/extensions.dart';
import 'core/helper/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'core/utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(AppRouter()));
}

class MyApp extends StatefulWidget {
  const MyApp(this.appRouter, {super.key});
  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  @override
  void initState() {
    super.initState();
    Localingo.setNavigatorKey(_navigatorKey);
  }

  void _changeLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.appRouter.locale = _locale;
    widget.appRouter.changeLocale = _changeLocale;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        locale: _locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('ar')],
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.startScreen,
        onGenerateRoute: widget.appRouter.generateRoute,
      ),
    );
  }
}

Future<void> checkIfLoggedInUser() async {
  String? guestId = await SharedPrefHelper.getSecuredString(
    AppConstants.guestId,
  );
  if (!guestId.isNullOrEmpty()) {
    isLoggedInUser = true;
    log('Logged in user with guestId: $guestId');
  } else {
    isLoggedInUser = false;
  }
}
