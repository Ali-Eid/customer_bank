import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/login_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/login_model/input_login/input_login_model.dart';

abstract class AuthRepository {
  Future<Result<ResponseModel<LoginModel>, FailureModel>> login(
      {required InputLoginModel input});
  Future<Result<ResponseModel, FailureModel>> sendOtp(
      {required String phoneNumber});
  Future<Result<ResponseModel, FailureModel>> logout();
}
