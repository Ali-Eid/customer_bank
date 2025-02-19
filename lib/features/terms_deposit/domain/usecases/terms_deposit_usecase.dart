import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/models/terms_deposit_model/terms_deposit_model.dart';
import 'package:fs_bank/features/terms_deposit/domain/repository/terms_deposit_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetPackagesTermsDepositUsecase
    implements
        BaseUseCaseEmptyInput<ResponseModel<List<PackageTermsDepositModel>>> {
  final TermsDepositRepository repository;

  GetPackagesTermsDepositUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<PackageTermsDepositModel>>, FailureModel>>
      execute() async {
    return await repository.getPackagesTermsDeposit();
  }
}

class RequestTermsDepositUsecase
    implements
        BaseUseCase<InputRequestTermsDepositModel,
            ResponseModel<TermsDepositModel>> {
  final TermsDepositRepository repository;

  RequestTermsDepositUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<TermsDepositModel>, FailureModel>> execute(
      InputRequestTermsDepositModel input) async {
    return await repository.requestTermsDeposit(input: input);
  }
}
