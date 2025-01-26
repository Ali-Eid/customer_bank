import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/transfer/data/datasource/transfer_api.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfere_model/transfere_model.dart';
import 'package:fs_bank/features/transfer/domain/repository/transfer_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';

class TransferRepositoryImpl implements TransferRepository {
  final TransferServiceClient transferServiceClient;
  final NetworkInfo networkInfo;

  TransferRepositoryImpl(
      {required this.transferServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>>
      confirmInternalTransferBetweenMyAccounts(
          {required InputConfirmTransferModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await transferServiceClient.confirmInternalTransfer(input: input);
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

  @override
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>>
      confirmLocalTransferBetweenMyAccounts(
          {required InputConfirmTransferModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await transferServiceClient.confirmLocalTransfer(input: input);
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

  @override
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>>
      storeInternalTransferBetweenMyAccounts(
          {required InputTransferModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await transferServiceClient.storeInternalTransfer(input: input);
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

  @override
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>>
      storeLocalTransferBetweenMyAccounts(
          {required InputTransferModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await transferServiceClient.storeLocalTransfer(input: input);
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
