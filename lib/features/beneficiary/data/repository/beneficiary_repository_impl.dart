import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/network/network_info.dart';
import 'package:fs_bank/features/beneficiary/data/datasource/remote/beneficiary_api.dart';
import 'package:fs_bank/features/beneficiary/domain/models/beneficiary_model/beneficiary_model.dart';
import 'package:fs_bank/features/beneficiary/domain/models/input_beneficiary_model/input_beneficiary_model.dart';
import 'package:fs_bank/features/beneficiary/domain/repository/beneficiary_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/constants/string_manager.dart';

class BeneficiaryRepositoryImpl implements BeneficiaryRepository {
  final BeneficiaryServiceClient beneficiaryServiceClient;
  final NetworkInfo networkInfo;

  BeneficiaryRepositoryImpl(
      {required this.beneficiaryServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>>
      createBeneficiary({required InputBeneficiaryModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await beneficiaryServiceClient.createBeneficiary(input: input);
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
  Future<Result<ResponseModel<List<BeneficiaryModel>>, FailureModel>>
      getBeneficiary() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await beneficiaryServiceClient.getBeneficiaries();
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
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      getRelationships() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await beneficiaryServiceClient.getRelationships();
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
  Future<Result<ResponseModel, FailureModel>> deleteBeneficiary(
      {required int id}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await beneficiaryServiceClient.deleteBeneficiary(id: id);
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
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>>
      updateBeneficiary(
          {required int id, required InputBeneficiaryModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await beneficiaryServiceClient.updateBeneficiary(
            id: id, input: input);
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
