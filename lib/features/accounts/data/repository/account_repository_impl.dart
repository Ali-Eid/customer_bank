import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/features/accounts/data/datasource/accounts/account_api.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_statement_model/account_statement_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_statement_settings_model/account_statement_settings_model.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../datasource/customer_account_api.dart';

class AccountRepositoryImpl implements AccountRepository {
  final CustomerAccountServiceClient customerAccountServiceClient;
  final AccountServiceClient accountServiceClient;
  final NetworkInfo networkInfo;

  AccountRepositoryImpl(
      {required this.customerAccountServiceClient,
      required this.accountServiceClient,
      required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<AccountModel>>, FailureModel>> getMyAccounts(
      {required int customerId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await customerAccountServiceClient.getMyAccounts(
            customerId: customerId);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }

  @override
  Future<Result<ResponseModel<AccountStatementModel>, FailureModel>>
      getAccountStatements(
          {required int accountId,
          bool? view,
          bool? export,
          int? maxPeriod}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await accountServiceClient.getMyAccounts(
            accountId: accountId,
            view: view,
            export: export,
            maxPeriod: maxPeriod);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }

  @override
  Future<Result<ResponseModel<AccountStatementSettingsModel>, FailureModel>>
      getAccountStatementsSettings() async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await accountServiceClient.getAccountStatementsSettings();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }
}
