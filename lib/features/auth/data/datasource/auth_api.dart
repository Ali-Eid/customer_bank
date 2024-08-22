import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/login_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: Endpoints.API)
abstract class AuthServiceClient {
  factory AuthServiceClient(Dio dio, {String baseUrl}) = _AuthServiceClient;

  @POST(Endpoints.LOGIN)
  Future<HttpResponse<ResponseModel<LoginModel>>> login(
      {@Body() required InputLoginModel input});
  @POST(Endpoints.SEND_OTP)
  Future<HttpResponse<ResponseModel>> sendOtp(
      {@Field("phone_number") required String phoneNumber});
  @POST(Endpoints.LOGOUT)
  Future<HttpResponse<ResponseModel>> logout();
}
