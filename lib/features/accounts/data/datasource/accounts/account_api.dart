import 'package:dio/dio.dart';
import 'package:fs_bank/features/accounts/domain/models/account_statement_model/account_statement_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/constants/endpoints.dart';
import '../../../domain/models/account_statement_settings_model/account_statement_settings_model.dart';

part 'account_api.g.dart';

@RestApi(baseUrl: Endpoints.ACCOUNTS_API)
abstract class AccountServiceClient {
  factory AccountServiceClient(Dio dio, {String baseUrl}) =
      _AccountServiceClient;

  @GET(Endpoints.ACCOUNT_STATEMENTS)
  Future<HttpResponse<ResponseModel<AccountStatementModel>>> getMyAccounts({
    @Path("account_id") required int accountId,
    @Query("view") bool? view,
    @Query("export") bool? export,
    @Query("max_period") int? maxPeriod,
  });
  @GET(Endpoints.ACCOUNT_STATEMENTS_SETTINGS)
  Future<HttpResponse<ResponseModel<AccountStatementSettingsModel>>>
      getAccountStatementsSettings();
}

// ResponseModel<AccountStatementModel>
//     deserializeResponseModelAccountStatementModel(Map<String, dynamic> json) {
//   return ResponseModel<AccountStatementModel>.fromJson(
//     json,
//     (data) => AccountStatementModel.fromJson(data as Map<String, dynamic>),
//   );
// }

// ResponseModel<AccountStatementSettingsModel>
//     deserializeResponseModelAccountStatementSettingsModel(
//         Map<String, dynamic> json) {
//   return ResponseModel<AccountStatementSettingsModel>.fromJson(
//     json,
//     (data) =>
//         AccountStatementSettingsModel.fromJson(data as Map<String, dynamic>),
//   );
// }
