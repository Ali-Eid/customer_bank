import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/login_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../domain/models/change_password_model/confirm_otp_change_password_model/confirm_otp_change_password_model.dart';
import '../../domain/models/change_password_model/input_change_password_model/input_change_password_model.dart';
import '../../domain/models/change_password_model/input_set_new_password_model/input_set_new_password_model.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: AuthEndpoints.API)
abstract class AuthServiceClient {
  factory AuthServiceClient(Dio dio, {String baseUrl}) = _AuthServiceClient;

  @POST(Endpoints.LOGIN)
  Future<HttpResponse<ResponseModel<LoginModel>>> login(
      {@Body() required InputLoginModel input});
  @POST(Endpoints.SEND_OTP)
  Future<HttpResponse<ResponseModel>> sendOtp({
    @Field("type") required String type,
    @Field("phone_number") required String phoneNumber,
  });
  @POST(Endpoints.LOGOUT)
  Future<HttpResponse<ResponseModel>> logout();

  //Change password
  @POST(Endpoints.forgetPassword)
  Future<HttpResponse<ResponseModel>> changePassword(
      {@Body() required InputChangePasswordModel input});
  @POST(Endpoints.forgetPasswordAfterOtp)
  Future<HttpResponse<ResponseModel<ConfirmOtpChangePasswordModel>>>
      confirmOtpNewPassword(
          {@Body() required InputSendOtpChangePasswordModel input});
  @POST(Endpoints.forgetPasswordSetNew)
  Future<HttpResponse<ResponseModel>> setNewPassword(
      {@Body() required InputSetNewPasswordModel input});
}
