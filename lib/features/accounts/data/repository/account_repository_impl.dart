import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/accounts/data/datasource/account_api.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountServiceClient accountServiceClient;
  final NetworkInfo networkInfo;

  AccountRepositoryImpl(
      {required this.accountServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<AccountModel>>, FailureModel>> getMyAccounts(
      {required int customerId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await accountServiceClient.getMyAccounts(customerId: customerId);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }
}
