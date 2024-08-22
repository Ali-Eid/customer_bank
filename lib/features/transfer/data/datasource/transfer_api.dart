import 'package:dio/dio.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';

part 'transfer_api.g.dart';

@RestApi(baseUrl: Endpoints.BANK_CONNECTOR)
abstract class TransferServiceClient {
  factory TransferServiceClient(Dio dio, {String baseUrl}) =
      _TransferServiceClient;

  @POST(Endpoints.ACCOUNTS_TRANSFARE)
  Future<HttpResponse<ResponseModel>> transfareMyAccounts({
    @Body() required InputTransferModel input,
  });
}
