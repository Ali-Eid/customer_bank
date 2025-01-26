import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/transfere_model/transfere_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';

abstract class TransferRepository {
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>>
      storeLocalTransferBetweenMyAccounts({required InputTransferModel input});
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>>
      confirmLocalTransferBetweenMyAccounts(
          {required InputConfirmTransferModel input});
  Future<Result<ResponseModel<StoreTransferModel>, FailureModel>>
      storeInternalTransferBetweenMyAccounts(
          {required InputTransferModel input});
  Future<Result<ResponseModel<ConfirmTransferModel>, FailureModel>>
      confirmInternalTransferBetweenMyAccounts(
          {required InputConfirmTransferModel input});
}
