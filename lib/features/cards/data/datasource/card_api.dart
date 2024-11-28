import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/constants/endpoints.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/bases/models/response_model/response_model.dart';

part 'card_api.g.dart';

@RestApi(baseUrl: Endpoints.CARD)
abstract class CardServiceClient {
  factory CardServiceClient(Dio dio, {String baseUrl}) = _CardServiceClient;

  @GET(Endpoints.MY_CARD)
  Future<HttpResponse<ResponseModel<List<CardModel>>>> getMyCards();

  @GET(Endpoints.WITHDRAWAL_VALUES)
  Future<HttpResponse<ResponseModel<List<WithDrawelValuesModel>>>>
      getWithdrawalValues();
  @GET(Endpoints.CARD_TYPES)
  Future<HttpResponse<ResponseModel<List<StaticTextModel>>>> getCardType();
  @GET(Endpoints.BENEFICIARY_TYPES)
  Future<HttpResponse<ResponseModel<List<StaticTextModel>>>>
      getBeneficiaryType();

  @POST(Endpoints.NEW_CARD)
  Future<HttpResponse<ResponseModel>> requestNewCard(
      {@Body() required RequestCardModel request});
  @POST(Endpoints.IN_ACTIVE_CARD)
  Future<HttpResponse<ResponseModel>> requestInActiveCard(
      {@Body() required RequestInactiveCardModel request});
  @POST(Endpoints.INCREASE_WITHDRAWAL_CARD)
  Future<HttpResponse<ResponseModel>> requestIncreaseWithdrawalCard(
      {@Body() required RequestIncreaseWithdrawalValueModel request});
}
