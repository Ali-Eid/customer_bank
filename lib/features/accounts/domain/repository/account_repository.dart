import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/bases/models/static_model/static_model.dart';

abstract class AccountRepository {
  Future<Result<ResponseModel<List<AccountModel>>, FailureModel>> getMyAccounts(
      {required int customerId});
}
