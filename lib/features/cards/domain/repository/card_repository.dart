import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';

abstract class CardRepository {
  Future<Result<ResponseModel<List<CardModel>>, FailureModel>> getMyCards();
  Future<Result<ResponseModel<List<WithDrawelValuesModel>>, FailureModel>>
      getWithDrawelValues();
  Future<Result<ResponseModel, FailureModel>> requestNewCard(
      {required RequestCardModel request});
  Future<Result<ResponseModel, FailureModel>> requestInActiveCard(
      {required RequestInactiveCardModel request});
  Future<Result<ResponseModel, FailureModel>> requestIncreaseWithdrawal(
      {required RequestIncreaseWithdrawalValueModel request});
}
