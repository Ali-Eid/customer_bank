import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/terms_deposit_model/terms_deposit_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/endpoints.dart';

part 'terms_deposit_api.g.dart';

@RestApi(baseUrl: Endpoints.TERMS_DEPOSIT_API)
abstract class TermsDepositServiceClient {
  factory TermsDepositServiceClient(Dio dio, {String baseUrl}) =
      _TermsDepositServiceClient;

  @GET(Endpoints.PACKAGES_TERMS_DEPOSIT)
  Future<HttpResponse<ResponseModel<List<PackageTermsDepositModel>>>>
      getPackagesTermsDeposit();
  @POST(Endpoints.REQUEST_TERMS_DEPOSIT)
  Future<HttpResponse<ResponseModel<TermsDepositModel>>> requestTermsDeposit({
    @Body() required InputRequestTermsDepositModel input,
  });
}
