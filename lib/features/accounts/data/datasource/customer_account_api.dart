import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';

part 'customer_account_api.g.dart';

@RestApi(baseUrl: Endpoints.CUSTOMER_ACCOUNT)
abstract class CustomerAccountServiceClient {
  factory CustomerAccountServiceClient(Dio dio, {String baseUrl}) =
      _CustomerAccountServiceClient;

  @GET(Endpoints.MY_ACCOUNTS)
  Future<HttpResponse<ResponseModel<List<AccountModel>>>> getMyAccounts(
      {@Path("customer_id") required int customerId});
}
