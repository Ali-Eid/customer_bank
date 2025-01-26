import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fs_bank/features/accounts/data/datasource/account_api.dart';
import 'package:fs_bank/features/accounts/data/repository/account_repository_impl.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:fs_bank/features/accounts/domain/usecases/account_usecases.dart';
import 'package:fs_bank/features/accounts/presentation/blocs/my_accounts_bloc/my_accounts_bloc.dart';
import 'package:fs_bank/features/auth/data/datasource/auth_api.dart';
import 'package:fs_bank/features/auth/data/repository/auth_repository_impl.dart';
import 'package:fs_bank/features/auth/domain/repository/auth_repository.dart';
import 'package:fs_bank/features/auth/domain/usecases/auth_usecases.dart';
import 'package:fs_bank/features/cards/data/datasource/card_api.dart';
import 'package:fs_bank/features/cards/data/repository/card_repository_impl.dart';
import 'package:fs_bank/features/cards/domain/repository/card_repository.dart';
import 'package:fs_bank/features/cards/presentation/blocs/cards_bloc/cards_bloc.dart';
import 'package:fs_bank/features/splash/presentation/blocs/app_bloc/app_bloc.dart';
import 'package:fs_bank/features/transfer/data/repository/transfer_repository_impl.dart';
import 'package:fs_bank/features/transfer/domain/usecases/transfer_usecases.dart';
import 'package:fs_bank/features/transfer/presentation/blocs/transfer_bloc/transfer_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/accounts/presentation/blocs/types_bloc/types_bloc.dart';
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../features/auth/presentation/blocs/input_forgot_password_cubit/input_forgot_password_cubit.dart';
import '../../features/cards/domain/usecases/card_usecases.dart';
import '../../features/cards/presentation/blocs/request_card_bloc/request_card_bloc.dart';
import '../../features/cards/presentation/blocs/withdrawal_bloc/withdrawal_bloc.dart';
import '../../features/transfer/data/datasource/transfer_api.dart';
import '../../features/transfer/domain/repository/transfer_repository.dart';
import '../cache/app_preferences.dart';
import '../network/dio_factory.dart';
import '../network/general_dio_interceptor.dart';
import '../network/network_info.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));
  instance.registerFactory<SharedPreferences>(() => sharedPreferences);
  instance.registerFactory<FlutterSecureStorage>(() => storage);
  instance.registerFactory<AppPreferences>(() => AppPreferences(
      instance<SharedPreferences>(), instance<FlutterSecureStorage>()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance(),
      ));
  final dio = await instance<DioFactory>().getDio();
  if (!GetIt.I.isRegistered<AccountServiceClient>()) {
    instance.registerLazySingleton(() => AccountServiceClient(dio));
  }
  if (!GetIt.I.isRegistered<CardServiceClient>()) {
    instance.registerLazySingleton(() => CardServiceClient(dio));
  }
  if (!GetIt.I.isRegistered<TransferServiceClient>()) {
    instance.registerLazySingleton(() => TransferServiceClient(dio));
  }
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));
  instance.registerFactory(
    () => AppBloc(
        appPreferences: instance<AppPreferences>(),
        logoutUsecase: instance<LogoutUsecase>()),
  );
}

Future<void> initCard() async {
  if (!GetIt.I.isRegistered<CardRepository>()) {
    instance.registerLazySingleton<CardRepository>(
      () => CardRepositoryImpl(
          cardServiceClient: instance<CardServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  if (!GetIt.I.isRegistered<GetCardUsecase>()) {
    instance.registerLazySingleton(
        () => GetCardUsecase(repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<GetWithDrawelValues>()) {
    instance.registerLazySingleton(
        () => GetWithDrawelValues(repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<RequestNewCardUsecase>()) {
    instance.registerLazySingleton(
        () => RequestNewCardUsecase(repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<RequestInActiveCardUsecase>()) {
    instance.registerLazySingleton(() =>
        RequestInActiveCardUsecase(repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<RequestIncreaseWithdrawalUsecase>()) {
    instance.registerLazySingleton(() => RequestIncreaseWithdrawalUsecase(
        repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<GetBeneficiaryTypesUsecase>()) {
    instance.registerLazySingleton(() =>
        GetBeneficiaryTypesUsecase(repository: instance<CardRepository>()));
  }
  if (!GetIt.I.isRegistered<GetCardTypesUsecase>()) {
    instance.registerLazySingleton(
        () => GetCardTypesUsecase(repository: instance<CardRepository>()));
  }

  //Blocs
  if (!GetIt.I.isRegistered<CardsBloc>()) {
    instance.registerFactory(
      () => CardsBloc(getCardUsecase: instance<GetCardUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<WithdrawalBloc>()) {
    instance.registerFactory(
      () =>
          WithdrawalBloc(getWithDrawelValues: instance<GetWithDrawelValues>()),
    );
  }
  if (!GetIt.I.isRegistered<TypesBloc>()) {
    instance.registerFactory(
      () => TypesBloc(
          getBeneficiaryTypes: instance<GetBeneficiaryTypesUsecase>(),
          getCardTypesUsecase: instance<GetCardTypesUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<RequestCardBloc>()) {
    instance.registerFactory(
      () => RequestCardBloc(
          requestInActiveCardUsecase: instance<RequestInActiveCardUsecase>(),
          requestNewCardUsecase: instance<RequestNewCardUsecase>(),
          requestIncreaseWithdrawalUsecase:
              instance<RequestIncreaseWithdrawalUsecase>()),
    );
  }
}

Future<void> initAccounts() async {
  if (!GetIt.I.isRegistered<AccountRepository>()) {
    instance.registerLazySingleton<AccountRepository>(
      () => AccountRepositoryImpl(
          accountServiceClient: instance<AccountServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  if (!GetIt.I.isRegistered<GetMyAccountsUsecase>()) {
    instance.registerLazySingleton(
        () => GetMyAccountsUsecase(repository: instance<AccountRepository>()));
  }

  //Bloc
  if (!GetIt.I.isRegistered<MyAccountsBloc>()) {
    instance.registerFactory(() =>
        MyAccountsBloc(getMyAccountsUsecase: instance<GetMyAccountsUsecase>()));
  }
}

Future<void> initLogin() async {
  final dio = await instance<DioFactory>().getDioAuth();
  if (!GetIt.I.isRegistered<AuthServiceClient>()) {
    instance.registerLazySingleton(
      () => AuthServiceClient(dio),
    );
  }
  if (!GetIt.I.isRegistered<LocalAuthentication>()) {
    instance.registerLazySingleton(
      () => LocalAuthentication(),
    );
  }
  if (!GetIt.I.isRegistered<AuthRepository>()) {
    instance.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
          authServiceClient: instance<AuthServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  if (!GetIt.I.isRegistered<LoginUsecase>()) {
    instance.registerLazySingleton(
        () => LoginUsecase(repository: instance<AuthRepository>()));
  }

  if (!GetIt.I.isRegistered<SendOtpUsecase>()) {
    instance.registerLazySingleton(
        () => SendOtpUsecase(repository: instance<AuthRepository>()));
  }
  if (!GetIt.I.isRegistered<LogoutUsecase>()) {
    instance.registerLazySingleton(
        () => LogoutUsecase(repository: instance<AuthRepository>()));
  }
  if (!GetIt.I.isRegistered<ForgotPasswordUsecase>()) {
    instance.registerLazySingleton(
        () => ForgotPasswordUsecase(repository: instance<AuthRepository>()));
  }
  if (!GetIt.I.isRegistered<ConfirmOtpChangePasswordUsecase>()) {
    instance.registerLazySingleton(() => ConfirmOtpChangePasswordUsecase(
        repository: instance<AuthRepository>()));
  }
  if (!GetIt.I.isRegistered<SetNewPasswordUsecase>()) {
    instance.registerLazySingleton(
        () => SetNewPasswordUsecase(repository: instance<AuthRepository>()));
  }

  //Bloc
  if (!GetIt.I.isRegistered<AuthBloc>()) {
    instance.registerFactory(() => AuthBloc(
        localAuthentication: instance<LocalAuthentication>(),
        appPreferences: instance<AppPreferences>(),
        loginUsecase: instance<LoginUsecase>(),
        // sendOtpUsecase: instance<SendOtpUsecase>(),
        confirmOtpChangePasswordUsecase:
            instance<ConfirmOtpChangePasswordUsecase>(),
        forgotPasswordUsecase: instance<ForgotPasswordUsecase>(),
        setNewPasswordUsecase: instance<SetNewPasswordUsecase>()));
  }
}

Future<void> initTransfer() async {
  if (!GetIt.I.isRegistered<TransferRepository>()) {
    instance.registerLazySingleton<TransferRepository>(
      () => TransferRepositoryImpl(
          transferServiceClient: instance<TransferServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }

  if (!GetIt.I.isRegistered<StoreLocalTransferMyAccountUsecase>()) {
    instance.registerLazySingleton(() => StoreLocalTransferMyAccountUsecase(
        repository: instance<TransferRepository>()));
  }
  if (!GetIt.I.isRegistered<ConfirmLocalTransferMyAccountUsecase>()) {
    instance.registerLazySingleton(() => ConfirmLocalTransferMyAccountUsecase(
        repository: instance<TransferRepository>()));
  }
  if (!GetIt.I.isRegistered<StoreInternalTransferMyAccountUsecase>()) {
    instance.registerLazySingleton(() => StoreInternalTransferMyAccountUsecase(
        repository: instance<TransferRepository>()));
  }
  if (!GetIt.I.isRegistered<ConfirmInternalTransferMyAccountUsecase>()) {
    instance.registerLazySingleton(() =>
        ConfirmInternalTransferMyAccountUsecase(
            repository: instance<TransferRepository>()));
  }

  //Bloc
  if (!GetIt.I.isRegistered<TransferBloc>()) {
    instance.registerFactory(() => TransferBloc(
        appPreferences: instance<AppPreferences>(),
        storeLocalTransferMyAccountUsecase:
            instance<StoreLocalTransferMyAccountUsecase>(),
        storeInternalTransferMyAccountUsecase:
            instance<StoreInternalTransferMyAccountUsecase>(),
        confirmInternalTransferMyAccountUsecase:
            instance<ConfirmInternalTransferMyAccountUsecase>(),
        confirmLocalTransferMyAccountUsecase:
            instance<ConfirmLocalTransferMyAccountUsecase>()));
  }
}
