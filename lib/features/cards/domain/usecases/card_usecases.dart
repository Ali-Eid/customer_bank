import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import 'package:fs_bank/features/cards/domain/models/card_model/card_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import 'package:fs_bank/features/cards/domain/repository/card_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetCardUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<CardModel>>> {
  final CardRepository repository;

  GetCardUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<CardModel>>, FailureModel>> execute() async {
    return await repository.getMyCards();
  }
}

class GetWithDrawelValues
    implements
        BaseUseCaseEmptyInput<ResponseModel<List<WithDrawelValuesModel>>> {
  final CardRepository repository;

  GetWithDrawelValues({required this.repository});
  @override
  Future<Result<ResponseModel<List<WithDrawelValuesModel>>, FailureModel>>
      execute() async {
    return await repository.getWithDrawelValues();
  }
}

class GetCardTypesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticTextModel>>> {
  final CardRepository repository;

  GetCardTypesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      execute() async {
    return await repository.getCardType();
  }
}

class GetBeneficiaryTypesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticTextModel>>> {
  final CardRepository repository;

  GetBeneficiaryTypesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      execute() async {
    return await repository.getBeneficiaryType();
  }
}

class RequestNewCardUsecase
    implements BaseUseCase<RequestCardModel, ResponseModel> {
  final CardRepository repository;

  RequestNewCardUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      RequestCardModel input) async {
    return await repository.requestNewCard(request: input);
  }
}

class RequestInActiveCardUsecase
    implements BaseUseCase<RequestInactiveCardModel, ResponseModel> {
  final CardRepository repository;

  RequestInActiveCardUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      RequestInactiveCardModel input) async {
    return await repository.requestInActiveCard(request: input);
  }
}

class RequestIncreaseWithdrawalUsecase
    implements BaseUseCase<RequestIncreaseWithdrawalValueModel, ResponseModel> {
  final CardRepository repository;

  RequestIncreaseWithdrawalUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      RequestIncreaseWithdrawalValueModel input) async {
    return await repository.requestIncreaseWithdrawal(request: input);
  }
}
