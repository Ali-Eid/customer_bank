import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetMyAccountsUsecase
    implements BaseUseCase<int, ResponseModel<List<AccountModel>>> {
  final AccountRepository repository;

  GetMyAccountsUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<AccountModel>>, FailureModel>> execute(
      int input) async {
    return await repository.getMyAccounts(customerId: input);
  }
}
