import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/themes/theme_manager.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import '../../features/accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import '../../features/cards/presentation/blocs/withdrawal_bloc/withdrawal_bloc.dart';
import '../cache/app_preferences.dart';
import '../routers/routes_manager.dart';
import 'depndency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => instance<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<CardsBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<MyAccountsBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<WithdrawalBloc>(),
        ),
      ],
      child: LayoutBuilder(builder: (context, constraints) {
        return ScreenUtilInit(
          designSize: Size(constraints.maxWidth, constraints.minHeight),
          builder: (context, child) => ThemeProvider(
            initTheme: instance<AppPreferences>().getTheme(),
            builder: (p0, theme) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'FS Bank',
              themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
              theme: theme,
              routerConfig: AppRouter.router,
            ),
          ),
        );
      }),
    );
  }
}
