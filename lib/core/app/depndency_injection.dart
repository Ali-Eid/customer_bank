import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fs_bank/features/accounts/data/datasource/accounts/account_api.dart';
import 'package:fs_bank/features/accounts/data/repository/account_repository_impl.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:fs_bank/features/accounts/domain/usecases/account_usecases.dart';
import 'package:fs_bank/features/auth/data/datasource/auth_api.dart';
import 'package:fs_bank/features/auth/data/repository/auth_repository_impl.dart';
import 'package:fs_bank/features/auth/domain/repository/auth_repository.dart';
import 'package:fs_bank/features/auth/domain/usecases/auth_usecases.dart';
import 'package:fs_bank/features/beneficiary/data/datasource/remote/beneficiary_api.dart';
import 'package:fs_bank/features/beneficiary/data/repository/beneficiary_repository_impl.dart';
import 'package:fs_bank/features/beneficiary/domain/repository/beneficiary_repository.dart';
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
import '../../features/accounts/data/datasource/customer_account_api.dart';
import '../../features/accounts/presentation/blocs/account_bloc/account_bloc.dart';
import '../../features/accounts/presentation/blocs/types_bloc/types_bloc.dart';
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../features/auth/presentation/blocs/input_forgot_password_cubit/input_forgot_password_cubit.dart';
import '../../features/beneficiary/domain/usecases/beneficiary_usecase.dart';
import '../../features/beneficiary/presentation/blocs/bloc/beneficiary_bloc.dart';
import '../../features/cards/domain/usecases/card_usecases.dart';
import '../../features/cards/presentation/blocs/request_card_bloc/request_card_bloc.dart';
import '../../features/cards/presentation/blocs/withdrawal_bloc/withdrawal_bloc.dart';
import '../../features/transfer/data/datasource/transfer_api.dart';
import '../../features/transfer/domain/repository/transfer_repository.dart';
import '../../features/transfer/presentation/blocs/transfer_sygs_bloc/transfer_sygs_bloc.dart';
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
  instance.registerLazySingleton<Dio>(() => dio);

  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));
  instance.registerFactory(
    () => AppBloc(
        appPreferences: instance<AppPreferences>(),
        logoutUsecase: instance<LogoutUsecase>()),
  );
}

Future<void> initCard() async {
  if (!GetIt.I.isRegistered<CardServiceClient>()) {
    instance.registerLazySingleton(() => CardServiceClient(instance<Dio>()));
  }
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
      () => CardsBloc(
          getCardUsecase: instance<GetCardUsecase>(),
          appPreferences: instance<AppPreferences>(),
          getWithDrawelValues: instance<GetWithDrawelValues>()),
    );
  }

  if (!GetIt.I.isRegistered<TypesBloc>()) {
    instance.registerFactory(
      () => TypesBloc(
          appPreferences: instance<AppPreferences>(),
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
  if (!GetIt.I.isRegistered<CustomerAccountServiceClient>()) {
    instance.registerLazySingleton(
        () => CustomerAccountServiceClient(instance<Dio>()));
  }
  if (!GetIt.I.isRegistered<AccountServiceClient>()) {
    instance.registerLazySingleton(() => AccountServiceClient(instance<Dio>()));
  }
  if (!GetIt.I.isRegistered<AccountRepository>()) {
    instance.registerLazySingleton<AccountRepository>(
      () => AccountRepositoryImpl(
          accountServiceClient: instance<AccountServiceClient>(),
          customerAccountServiceClient:
              instance<CustomerAccountServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  if (!GetIt.I.isRegistered<GetMyAccountsUsecase>()) {
    instance.registerLazySingleton(
        () => GetMyAccountsUsecase(repository: instance<AccountRepository>()));
  }
  if (!GetIt.I.isRegistered<GetAccountStatementsSettingsUsecase>()) {
    instance.registerLazySingleton(() => GetAccountStatementsSettingsUsecase(
        repository: instance<AccountRepository>()));
  }
  if (!GetIt.I.isRegistered<GetAccountStatementsUsecase>()) {
    instance.registerLazySingleton(() =>
        GetAccountStatementsUsecase(repository: instance<AccountRepository>()));
  }

  if (!GetIt.I.isRegistered<AccountBloc>()) {
    instance.registerFactory(() => AccountBloc(
        getAccountStatementsSettingsUsecase:
            instance<GetAccountStatementsSettingsUsecase>(),
        getAccountStatementsUsecase: instance<GetAccountStatementsUsecase>(),
        getMyAccountsUsecase: instance<GetMyAccountsUsecase>(),
        appPreferences: instance<AppPreferences>()));
  }
}

Future<void> initLogin() async {
  final dio = await instance<DioFactory>().getDioAuth();
  instance.registerLazySingleton<Dio>(() => dio, instanceName: "dio_auth");

  if (!GetIt.I.isRegistered<AuthServiceClient>()) {
    instance.registerLazySingleton(
      () => AuthServiceClient(instance<Dio>(instanceName: "dio_auth")),
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
  if (!GetIt.I.isRegistered<TransferServiceClient>()) {
    instance
        .registerLazySingleton(() => TransferServiceClient(instance<Dio>()));
  }
  if (!GetIt.I.isRegistered<BeneficiaryServiceClient>()) {
    instance
        .registerLazySingleton(() => BeneficiaryServiceClient(instance<Dio>()));
  }
  if (!GetIt.I.isRegistered<TransferRepository>()) {
    instance.registerLazySingleton<TransferRepository>(
      () => TransferRepositoryImpl(
          transferServiceClient: instance<TransferServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  if (!GetIt.I.isRegistered<BeneficiaryRepository>()) {
    instance.registerLazySingleton<BeneficiaryRepository>(
      () => BeneficiaryRepositoryImpl(
          beneficiaryServiceClient: instance<BeneficiaryServiceClient>(),
          networkInfo: instance<NetworkInfo>()),
    );
  }
  //Transfer Usecase
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
  if (!GetIt.I.isRegistered<SYGSTransferUsecase>()) {
    instance.registerLazySingleton(
        () => SYGSTransferUsecase(repository: instance<TransferRepository>()));
  }
  if (!GetIt.I.isRegistered<GetBanksUsecase>()) {
    instance.registerLazySingleton(
        () => GetBanksUsecase(repository: instance<TransferRepository>()));
  }
  if (!GetIt.I.isRegistered<GetTransferSYGSReasonsUsecase>()) {
    instance.registerLazySingleton(() => GetTransferSYGSReasonsUsecase(
        repository: instance<TransferRepository>()));
  }
  //Beneficiary Usecase
  if (!GetIt.I.isRegistered<GetBeneficiaryUsecase>()) {
    instance.registerLazySingleton(() =>
        GetBeneficiaryUsecase(repository: instance<BeneficiaryRepository>()));
  }
  if (!GetIt.I.isRegistered<CreateBeneficiaryUsecase>()) {
    instance.registerLazySingleton(() => CreateBeneficiaryUsecase(
        repository: instance<BeneficiaryRepository>()));
  }
  if (!GetIt.I.isRegistered<GetRelationshipsUsecase>()) {
    instance.registerLazySingleton(() =>
        GetRelationshipsUsecase(repository: instance<BeneficiaryRepository>()));
  }
  if (!GetIt.I.isRegistered<UpdateBeneficiaryUsecase>()) {
    instance.registerLazySingleton(() => UpdateBeneficiaryUsecase(
        repository: instance<BeneficiaryRepository>()));
  }
  if (!GetIt.I.isRegistered<DeleteBeneficiaryUsecase>()) {
    instance.registerLazySingleton(() => DeleteBeneficiaryUsecase(
        repository: instance<BeneficiaryRepository>()));
  }
  //Blocs Transfer
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

  //Blocs Beneficiary

  if (!GetIt.I.isRegistered<BeneficiaryBloc>()) {
    instance.registerFactory(() => BeneficiaryBloc(
        createBeneficiaryUsecase: instance<CreateBeneficiaryUsecase>(),
        getBeneficiaryUsecase: instance<GetBeneficiaryUsecase>(),
        getRelationshipsUsecase: instance<GetRelationshipsUsecase>(),
        deleteBeneficiaryUsecase: instance<DeleteBeneficiaryUsecase>(),
        updateBeneficiaryUsecase: instance<UpdateBeneficiaryUsecase>()));
  }
  if (!GetIt.I.isRegistered<TransferSygsBloc>()) {
    instance.registerFactory(() => TransferSygsBloc(
        getTransferSYGSReasonsUsecase:
            instance<GetTransferSYGSReasonsUsecase>(),
        getBanksUsecase: instance<GetBanksUsecase>(),
        sygsTransferUsecase: instance<SYGSTransferUsecase>()));
  }
}
