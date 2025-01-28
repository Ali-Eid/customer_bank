import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/beneficiary/domain/models/input_beneficiary_model/input_beneficiary_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/constants/endpoints.dart';
import '../../../domain/models/beneficiary_model/beneficiary_model.dart';

part 'beneficiary_api.g.dart';

@RestApi(baseUrl: Endpoints.BENEFICIARY_API)
abstract class BeneficiaryServiceClient {
  factory BeneficiaryServiceClient(Dio dio, {String baseUrl}) =
      _BeneficiaryServiceClient;
  @GET(Endpoints.RELATIONSHIPS)
  Future<HttpResponse<ResponseModel<List<StaticTextModel>>>> getRelationships();
  @GET(Endpoints.BENEFICIARY)
  Future<HttpResponse<ResponseModel<List<BeneficiaryModel>>>>
      getBeneficiaries();
  @POST(Endpoints.BENEFICIARY)
  Future<HttpResponse<ResponseModel<BeneficiaryModel>>> createBeneficiary(
      {@Body() required InputBeneficiaryModel input});
  @PUT(Endpoints.BENEFICIARY_BY_ID)
  Future<HttpResponse<ResponseModel<BeneficiaryModel>>> updateBeneficiary(
      {@Path("id") required int id,
      @Body() required InputBeneficiaryModel input});
  @DELETE(Endpoints.BENEFICIARY_BY_ID)
  Future<HttpResponse<ResponseModel>> deleteBeneficiary({
    @Path("id") required int id,
  });
}
