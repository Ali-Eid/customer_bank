import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfer_sygs_model/input_transfer_sygs_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfere_model/transfere_model.dart';
import 'package:fs_bank/features/transfer/domain/repository/transfer_repository.dart';
import 'package:multiple_result/src/result.dart';

class StoreLocalTransferMyAccountUsecase
    implements
        BaseUseCase<InputTransferModel, ResponseModel<StoreTransferModel>> {
  final TransferRepository repository;

  StoreLocalTransferMyAccountUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>> execute(
      InputTransferModel input) async {
    return await repository.storeLocalTransferBetweenMyAccounts(input: input);
  }
}

class ConfirmLocalTransferMyAccountUsecase
    implements
        BaseUseCase<InputConfirmTransferModel,
            ResponseModel<ConfirmTransferModel>> {
  final TransferRepository repository;

  ConfirmLocalTransferMyAccountUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>> execute(
      InputConfirmTransferModel input) async {
    return await repository.confirmLocalTransferBetweenMyAccounts(input: input);
  }
}

class StoreInternalTransferMyAccountUsecase
    implements
        BaseUseCase<InputTransferModel, ResponseModel<StoreTransferModel>> {
  final TransferRepository repository;

  StoreInternalTransferMyAccountUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>> execute(
      InputTransferModel input) async {
    return await repository.storeInternalTransferBetweenMyAccounts(
        input: input);
  }
}

class ConfirmInternalTransferMyAccountUsecase
    implements
        BaseUseCase<InputConfirmTransferModel,
            ResponseModel<ConfirmTransferModel>> {
  final TransferRepository repository;

  ConfirmInternalTransferMyAccountUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>> execute(
      InputConfirmTransferModel input) async {
    return await repository.confirmInternalTransferBetweenMyAccounts(
        input: input);
  }
}

//-----------SYGS--------------

class SYGSTransferUsecase
    implements BaseUseCase<InputTransferSygsModel, ResponseModel> {
  final TransferRepository repository;

  SYGSTransferUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      InputTransferSygsModel input) async {
    return await repository.transferSYGS(input: input);
  }
}

class GetBanksUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final TransferRepository repository;

  GetBanksUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getBanks();
  }
}

class GetTransferSYGSReasonsUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticTextModel>>> {
  final TransferRepository repository;

  GetTransferSYGSReasonsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      execute() async {
    return await repository.getTransferSYGSReason();
  }
}
