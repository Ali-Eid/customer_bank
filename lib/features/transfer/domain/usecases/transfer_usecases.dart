import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/repository/transfer_repository.dart';
import 'package:multiple_result/src/result.dart';

class TransferMyAccountUsecase
    implements BaseUseCase<InputTransferModel, ResponseModel> {
  final TransferRepository repository;

  TransferMyAccountUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      InputTransferModel input) async {
    return await repository.transferBetweenMyAccounts(input: input);
  }
}
