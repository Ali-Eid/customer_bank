import 'package:dio/dio.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/bases/models/static_model/static_model.dart';
import '../../../../core/constants/endpoints.dart';

part 'account_api.g.dart';

@RestApi(baseUrl: Endpoints.CUSTOMER_ACCOUNT)
abstract class AccountServiceClient {
  factory AccountServiceClient(Dio dio, {String baseUrl}) =
      _AccountServiceClient;

  @GET(Endpoints.MY_ACCOUNTS)
  Future<HttpResponse<ResponseModel<List<AccountModel>>>> getMyAccounts(
      {@Path("customer_id") required int customerId});
}
