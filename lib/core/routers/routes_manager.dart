import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/views/account_view.dart';
import 'package:fs_bank/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fs_bank/features/auth/presentation/views/login_view.dart';
import 'package:fs_bank/features/cards/presentation/views/mycards_view.dart';
import 'package:fs_bank/features/home/presentation/views/home_view.dart';
import 'package:fs_bank/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fs_bank/features/transfer/presentation/views/transfer_my_accounts_view.dart';

import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/otp_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class RoutesNames {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/on-boarding';
  static const String loginRoute = '/login';
  static const String otpVerficationRoute = 'otp-verfication';
  static const String homeRoute = '/home';
  static const String accountsRoute = 'accounts';
  static const String myCardsRoute = 'my-cards';
  static const String transferRoute = 'transfer-my-accounts';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/on-boarding';
  static const String loginRoute = '/login';
  static const String otpVerficationRoute = 'otp-verfication/:phone';
  static const String homeRoute = '/home';
  static const String accountsRoute = 'accounts';
  static const String myCardsRoute = 'my-cards';
  static const String transferRoute = 'transfer-my-accounts';
}

class AppRouter {
  static final router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutesPaths.splashRoute,
      routes: [
        GoRoute(
            name: RoutesNames.splashRoute,
            path: RoutesPaths.splashRoute,
            builder: (context, state) => const SplashView()),
        GoRoute(
            name: RoutesNames.onBoardingRoute,
            path: RoutesPaths.onBoardingRoute,
            builder: (context, state) => const OnBoardingView()),
        GoRoute(
            name: RoutesNames.loginRoute,
            path: RoutesPaths.loginRoute,
            builder: (context, state) => const LoginView(),
            routes: [
              GoRoute(
                  name: RoutesNames.otpVerficationRoute,
                  path: RoutesPaths.otpVerficationRoute,
                  builder: (context, state) {
                    return BlocProvider.value(
                      value: state.extra as AuthBloc,
                      child: OtpView(
                        phoneNumber: state.pathParameters["phone"] ?? "",
                      ),
                    );
                  }),
            ]),
        GoRoute(
            name: RoutesNames.homeRoute,
            path: RoutesPaths.homeRoute,
            builder: (context, state) => const HomeView(),
            routes: [
              GoRoute(
                name: RoutesNames.accountsRoute,
                path: RoutesPaths.accountsRoute,
                builder: (context, state) => const AccountView(),
              ),
              GoRoute(
                name: RoutesNames.myCardsRoute,
                path: RoutesPaths.myCardsRoute,
                builder: (context, state) => const MyCardsView(),
              ),
              GoRoute(
                name: RoutesNames.transferRoute,
                path: RoutesPaths.transferRoute,
                builder: (context, state) => const TransferMyAccountsView(),
              )
            ]),
      ]);
}
