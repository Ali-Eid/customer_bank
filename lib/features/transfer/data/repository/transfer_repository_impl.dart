import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/transfer/data/datasource/transfer_api.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/repository/transfer_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';

class TransferRepositoryImpl implements TransferRepository {
  final TransferServiceClient transferServiceClient;
  final NetworkInfo networkInfo;

  TransferRepositoryImpl(
      {required this.transferServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel, FailureModel>> transferBetweenMyAccounts(
      {required InputTransferModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await transferServiceClient.transfareMyAccounts(input: input);
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
