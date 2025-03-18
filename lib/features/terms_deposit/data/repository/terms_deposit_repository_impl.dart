import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/terms_deposit_model/terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/repository/terms_deposit_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/network/network_info.dart';
import '../datasource/remote/terms_deposit_api.dart';

class TermsDepositRepositoryImpl implements TermsDepositRepository {
  final TermsDepositServiceClient termsDepositServiceClient;
  final NetworkInfo networkInfo;

  TermsDepositRepositoryImpl(
      {required this.termsDepositServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<PackageTermsDepositModel>>, FailureModel>>
      getPackagesTermsDeposit() async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await termsDepositServiceClient.getPackagesTermsDeposit();
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
  Future<Result<ResponseModel<TermsDepositModel>, FailureModel>>
      requestTermsDeposit(
          {required InputRequestTermsDepositModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await termsDepositServiceClient.requestTermsDeposit(input: input);

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
