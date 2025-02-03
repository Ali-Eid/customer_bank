import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_statement_model/account_statement_model.dart';
import 'package:fs_bank/features/accounts/domain/repository/account_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../models/account_statement_settings_model/account_statement_settings_model.dart';

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

class GetAccountStatementsUsecase
    implements
        BaseUseCase<
            ({
              int accountId,
              bool? view,
              int? maxPeriod,
            }),
            ResponseModel<AccountStatementModel>> {
  final AccountRepository repository;
  GetAccountStatementsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<AccountStatementModel>, FailureModel>> execute(
      ({int accountId, int? maxPeriod, bool? view}) input) async {
    return await repository.getAccountStatements(
        accountId: input.accountId,
        view: input.view,
        maxPeriod: input.maxPeriod);
  }
}

class GetAccountStatementsSettingsUsecase
    implements
        BaseUseCaseEmptyInput<ResponseModel<AccountStatementSettingsModel>> {
  final AccountRepository repository;
  GetAccountStatementsSettingsUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<AccountStatementSettingsModel>, FailureModel>>
      execute() async {
    return await repository.getAccountStatementsSettings();
  }
}
