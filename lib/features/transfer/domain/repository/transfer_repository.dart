import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';

abstract class TransferRepository {
  Future<Result<ResponseModel, FailureModel>> transferBetweenMyAccounts(
      {required InputTransferModel input});
}
