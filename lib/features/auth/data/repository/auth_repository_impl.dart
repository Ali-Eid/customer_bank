import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/auth/data/datasource/auth_api.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/login_model.dart';
import 'package:fs_bank/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthServiceClient authServiceClient;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.authServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponseModel<LoginModel>, FailureModel>> login(
      {required InputLoginModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await authServiceClient.login(input: input);
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
  Future<Result<ResponseModel, FailureModel>> sendOtp(
      {required String phoneNumber}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await authServiceClient.sendOtp(phoneNumber: phoneNumber);
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
  Future<Result<ResponseModel, FailureModel>> logout() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await authServiceClient.logout();
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
