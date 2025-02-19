import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/chequebook_model/chequebook_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/page_chequebook_model/page_chequebook_model.dart';
import 'package:fs_bank/features/chequebook/domain/repository/chequebook_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/network/network_info.dart';
import '../datasource/chequebook_api.dart';

class ChequebookRepositoryImpl implements ChequebookRepository {
  final ChequebookServiceClient chequebookServiceClient;
  final NetworkInfo networkInfo;

  ChequebookRepositoryImpl(
      {required this.chequebookServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<ChequebookModel>, FailureModel>> createChequebook(
      {required int accountId, required int pageId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chequebookServiceClient.requestChequebook(
            accountId: accountId, pageId: pageId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
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
  Future<Result<ResponsePaginationModel<List<ChequebookModel>>, FailureModel>>
      getMyChequebook({required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await chequebookServiceClient.getMyChequebooks(page: page);
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
  Future<Result<ResponseModel<List<PageChequebookModel>>, FailureModel>>
      getPagesChequebook() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chequebookServiceClient.getPagesChequebook();
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
  Future<Result<ResponseModel, FailureModel>> requestStolenChequebook(
      {required int chequebookId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chequebookServiceClient.requestStolenChequebook(
            chequebookId: chequebookId);
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
