import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/cards/data/datasource/card_api.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:fs_bank/features/cards/domain/repository/card_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';

class CardRepositoryImpl implements CardRepository {
  final CardServiceClient cardServiceClient;
  final NetworkInfo networkInfo;

  CardRepositoryImpl(
      {required this.cardServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<CardModel>>, FailureModel>>
      getMyCards() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await cardServiceClient.getMyCards();
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
  Future<Result<ResponseModel<List<WithDrawelValuesModel>>, FailureModel>>
      getWithDrawelValues() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await cardServiceClient.getWithdrawalValues();
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
  Future<Result<ResponseModel, FailureModel>> requestInActiveCard(
      {required RequestInactiveCardModel request}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await cardServiceClient.requestInActiveCard(request: request);
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
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel, FailureModel>> requestIncreaseWithdrawal(
      {required RequestIncreaseWithdrawalValueModel request}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await cardServiceClient.requestIncreaseWithdrawalCard(
            request: request);
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
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel, FailureModel>> requestNewCard(
      {required RequestCardModel request}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await cardServiceClient.requestNewCard(request: request);
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
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }
}
