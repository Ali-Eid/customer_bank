import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/chequebook_model/chequebook_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/page_chequebook_model/page_chequebook_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/endpoints.dart';

part 'chequebook_api.g.dart';

@RestApi(baseUrl: Endpoints.CHEQUEBOOK_API)
abstract class ChequebookServiceClient {
  factory ChequebookServiceClient(Dio dio, {String baseUrl}) =
      _ChequebookServiceClient;

  @GET(Endpoints.MY_CHEQUEBOOK)
  Future<HttpResponse<ResponsePaginationModel<List<ChequebookModel>>>>
      getMyChequebooks({
    @Query("page") required int page,
    @Query("per_page") int perPage = 10,
  });

  @GET(Endpoints.PAGES_CHEQUEBOOK)
  Future<HttpResponse<ResponseModel<List<PageChequebookModel>>>>
      getPagesChequebook();
  @POST(Endpoints.REQUEST_CHEQUEBOOK)
  Future<HttpResponse<ResponseModel<ChequebookModel>>> requestChequebook({
    @Field("account_id") required int accountId,
    @Field("page_id") required int pageId,
  });
  @POST(Endpoints.REPORT_STOLEN_CHEQUEBOOK)
  Future<HttpResponse<ResponseModel>> requestStolenChequebook(
      {@Field("chequebook_id") required int chequebookId});
}
