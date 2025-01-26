import 'package:dio/dio.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfere_model/transfere_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';

part 'transfer_api.g.dart';

@RestApi(baseUrl: Endpoints.TRANSFER_API)
abstract class TransferServiceClient {
  factory TransferServiceClient(Dio dio, {String baseUrl}) =
      _TransferServiceClient;

  @POST(Endpoints.STORE_LOCAL_TRANSFER)
  Future<HttpResponse<ResponseModel<StoreTransferModel>>> storeLocalTransfer({
    @Body() required InputTransferModel input,
  });
  @POST(Endpoints.CONFIRM_LOCAL_TRANSFER)
  Future<HttpResponse<ResponseModel<ConfirmTransferModel>>>
      confirmLocalTransfer({
    @Body() required InputConfirmTransferModel input,
  });
  //--------------------------
  @POST(Endpoints.STORE_INTERNAL_TRANSFER)
  Future<HttpResponse<ResponseModel<StoreTransferModel>>>
      storeInternalTransfer({
    @Body() required InputTransferModel input,
  });
  @POST(Endpoints.CONFIRM_INTERNAL_TRANSFER)
  Future<HttpResponse<ResponseModel<ConfirmTransferModel>>>
      confirmInternalTransfer({
    @Body() required InputConfirmTransferModel input,
  });
  //--------------------------
}
