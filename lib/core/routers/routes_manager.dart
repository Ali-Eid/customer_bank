import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/accounts/presentation/views/account_view.dart';
import 'package:fs_bank/features/auth/presentation/views/forgot_password_view.dart';
import 'package:fs_bank/features/auth/presentation/views/login_view.dart';
import 'package:fs_bank/features/beneficiary/presentation/blocs/bloc/beneficiary_bloc.dart';
import 'package:fs_bank/features/beneficiary/presentation/views/beneficiary_view.dart';
import 'package:fs_bank/features/cards/presentation/views/mycards_view.dart';
import 'package:fs_bank/features/chequebook/presentation/views/chequebook_view.dart';
import 'package:fs_bank/features/home/presentation/views/home_view.dart';
import 'package:fs_bank/features/transfer/presentation/views/transfer_bank_accounts_view.dart';
import 'package:fs_bank/features/transfer/presentation/views/transfer_my_accounts_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/new_password_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../../features/transfer/presentation/views/transfer_sygs_view.dart';
import '../../features/transfer/presentation/views/transfer_view.dart';
import '../app/depndency_injection.dart';

class RoutesNames {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String forgotPasswordRoute = 'forgot-password';
  static const String changePasswordRoute = 'change-password';
  // static const String otpVerficationRoute = 'otp-verfication';
  static const String homeRoute = '/home';
  static const String accountsRoute = 'accounts';
  static const String myCardsRoute = 'my-cards';
  static const String transferMyAccountsRoute = 'transfer-my-accounts';
  static const String transferInternalRoute = 'transfer-internal';
  static const String transferSygsRoute = 'transfer-sygs';
  static const String beneficiaryRoute = 'beneficiary';
  // static const String createBeneficiaryRoute = 'create-beneficiary';
  static const String transferRoute = 'transfer';
  //ChequebookView
  static const String chequebookRoute = 'chequebook';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String forgotPasswordRoute = 'forgot-password';
  static const String changePasswordRoute = 'change-password';

  // static const String otpVerficationRoute = 'otp-verfication/:phone';
  static const String homeRoute = '/home';
  static const String accountsRoute = 'accounts';
  static const String myCardsRoute = 'my-cards';
  static const String transferMyAccountsRoute = 'transfer-my-accounts';
  static const String transferInternalRoute = 'transfer-internal';
  static const String transferSygsRoute = 'transfer-sygs';

  static const String beneficiaryRoute = 'beneficiary';
  // static const String createBeneficiaryRoute = 'create-beneficiary';

  static const String transferRoute = 'transfer';
  static const String chequebookRoute = 'chequebook';
}

class NavigationKeys {
  static final shellNavigatorKey = GlobalKey<NavigatorState>();
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
}

class AppRouter {
  static final router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: NavigationKeys.rootNavigatorKey,
      initialLocation: RoutesPaths.splashRoute,
      routes: [
        GoRoute(
            name: RoutesNames.splashRoute,
            path: RoutesPaths.splashRoute,
            builder: (context, state) => const SplashView()),
        // GoRoute(
        //     name: RoutesNames.onBoardingRoute,
        //     path: RoutesPaths.onBoardingRoute,
        //     builder: (context, state) => const OnBoardingView()),
        GoRoute(
            name: RoutesNames.loginRoute,
            path: RoutesPaths.loginRoute,
            builder: (context, state) => const LoginView(),
            routes: [
              // GoRoute(
              //     name: RoutesNames.otpVerficationRoute,
              //     path: RoutesPaths.otpVerficationRoute,
              //     builder: (context, state) {
              //       return OtpView(
              //         phoneNumber: state.pathParameters["phone"] ?? "",
              //       );
              //     }),
              GoRoute(
                  name: RoutesNames.forgotPasswordRoute,
                  path: RoutesPaths.forgotPasswordRoute,
                  builder: (context, state) {
                    return const ForgotPasswordView();
                  }),
              GoRoute(
                  name: RoutesNames.changePasswordRoute,
                  path: RoutesPaths.changePasswordRoute,
                  builder: (context, state) {
                    return NewPasswordView(
                      referenceId: state.extra as String,
                    );
                  }),
            ]),
        GoRoute(
            name: RoutesNames.homeRoute,
            path: RoutesPaths.homeRoute,
            builder: (context, state) => const HomeView(),
            routes: [
              // GoRoute(
              //   name: RoutesNames.accountsRoute,
              //   path: RoutesPaths.accountsRoute,
              //   builder: (context, state) => const AccountView(),
              // ),
              GoRoute(
                name: RoutesNames.myCardsRoute,
                path: RoutesPaths.myCardsRoute,
                builder: (context, state) => const MyCardsView(),
              ),
              GoRoute(
                  name: RoutesNames.transferRoute,
                  path: RoutesPaths.transferRoute,
                  builder: (context, state) => const TransferView(),
                  routes: [
                    GoRoute(
                      name: RoutesNames.transferMyAccountsRoute,
                      path: RoutesPaths.transferMyAccountsRoute,
                      builder: (context, state) =>
                          const TransferMyAccountsView(),
                    ),
                    GoRoute(
                      name: RoutesNames.transferInternalRoute,
                      path: RoutesPaths.transferInternalRoute,
                      builder: (context, state) =>
                          const TransferBankAccountsView(),
                    ),
                    GoRoute(
                      name: RoutesNames.transferSygsRoute,
                      path: RoutesPaths.transferSygsRoute,
                      builder: (context, state) => const TransferSygsView(),
                    )
                  ]),
              GoRoute(
                  name: RoutesNames.beneficiaryRoute,
                  path: RoutesPaths.beneficiaryRoute,
                  builder: (context, state) => BlocProvider(
                        create: (context) => instance<BeneficiaryBloc>()
                          ..add(const BeneficiaryEvent.getBeneficiaries()),
                        child: const BeneficiaryView(),
                      ),
                  routes: const [
                    // GoRoute(
                    //   name: RoutesNames.createBeneficiaryRoute,
                    //   path: RoutesPaths.createBeneficiaryRoute,
                    //   builder: (context, state) =>
                    //       const CreateBeneficiaryView(),
                    // ),
                  ]),
              GoRoute(
                name: RoutesNames.chequebookRoute,
                path: RoutesPaths.chequebookRoute,
                builder: (context, state) => const ChequebookView(),
              ),
            ]),
        // ShellRoute(
        //   navigatorKey: NavigationKeys.shellNavigatorKey,
        //   pageBuilder: (context, state, child) {
        //     return CustomTransitionPage(
        //       transitionDuration: const Duration(milliseconds: 1140),
        //       child: MainView(child: child),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         return FadeTransition(
        //           opacity: animation.drive(
        //             CurveTween(
        //               curve: Curves.easeInOut, // Smooth fade effect
        //             ),
        //           ),
        //           child: ScaleTransition(
        //             scale: Tween<double>(
        //               begin: 0.95, // Slightly zoomed out at the start
        //               end: 1.0, // Full scale at the end
        //             ).animate(
        //               CurvedAnimation(
        //                 parent: animation,
        //                 curve: Curves.easeInOut, // Smooth scale effect
        //               ),
        //             ),
        //             child: child,
        //           ),
        //         );
        //       },
        //     );
        //   },
        //   routes: [
        //     GoRoute(
        //       parentNavigatorKey: NavigationKeys.shellNavigatorKey,
        //       name: RoutesNames.homeRoute,
        //       path: RoutesPaths.homeRoute,
        //       // builder: (context, state) => const BrandsView(),
        //       pageBuilder: (context, state) =>
        //           NoTransitionPage(key: state.pageKey, child: const HomeView()),
        //     ),
        //     GoRoute(
        //       parentNavigatorKey: NavigationKeys.shellNavigatorKey,
        //       name: RoutesNames.myCardsRoute,
        //       path: RoutesPaths.myCardsRoute,
        //       // builder: (context, state) => const CartView(),
        //       pageBuilder: (context, state) => NoTransitionPage(
        //           key: state.pageKey, child: const MyCardsView()),
        //     ),
        //     GoRoute(
        //       parentNavigatorKey: NavigationKeys.shellNavigatorKey,
        //       name: RoutesNames.transferRoute,
        //       path: RoutesPaths.transferRoute,
        //       // builder: (context, state) => const ProfileView(),
        //       pageBuilder: (context, state) => NoTransitionPage(
        //           key: state.pageKey, child: const TransferMyAccountsView()),
        //     ),
        //   ],
        // ),
      ]);
}
