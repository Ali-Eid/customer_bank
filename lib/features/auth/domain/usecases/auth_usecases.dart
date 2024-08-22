import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/login_model.dart';
import 'package:fs_bank/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';

class LoginUsecase
    implements BaseUseCase<InputLoginModel, ResponseModel<LoginModel>> {
  final AuthRepository repository;

  LoginUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<LoginModel>, FailureModel>> execute(
      InputLoginModel input) async {
    return await repository.login(input: input);
  }
}

class SendOtpUsecase implements BaseUseCase<String, ResponseModel> {
  final AuthRepository repository;

  SendOtpUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      String phoneNumber) async {
    return await repository.sendOtp(phoneNumber: phoneNumber);
  }
}

class LogoutUsecase implements BaseUseCaseEmptyInput<ResponseModel> {
  final AuthRepository repository;

  LogoutUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute() async {
    return await repository.logout();
  }
}
