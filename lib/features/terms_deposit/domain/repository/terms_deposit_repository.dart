import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/terms_deposit_model/terms_deposit_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';

abstract class TermsDepositRepository {
  Future<Result<ResponseModel<List<PackageTermsDepositModel>>, FailureModel>>
      getPackagesTermsDeposit();
  Future<Result<ResponseModel<TermsDepositModel>, FailureModel>>
      requestTermsDeposit({required InputRequestTermsDepositModel input});
}
