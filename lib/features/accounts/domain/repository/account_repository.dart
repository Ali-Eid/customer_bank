import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/account_statement_model/account_statement_model.dart';
import '../models/account_statement_settings_model/account_statement_settings_model.dart';

abstract class AccountRepository {
  Future<Result<ResponseModel<List<AccountModel>>, FailureModel>> getMyAccounts(
      {required int customerId});

  Future<Result<ResponseModel<AccountStatementModel>, FailureModel>>
      getAccountStatements({
    required int accountId,
    bool? view,
    int? maxPeriod,
  });
  Future<Result<ResponseModel<AccountStatementSettingsModel>, FailureModel>>
      getAccountStatementsSettings();
}
