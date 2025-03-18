import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/beneficiary/domain/models/beneficiary_model/beneficiary_model.dart';
import 'package:fs_bank/features/beneficiary/domain/models/input_beneficiary_model/input_beneficiary_model.dart';
import 'package:fs_bank/features/beneficiary/domain/repository/beneficiary_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetBeneficiaryUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<BeneficiaryModel>>> {
  final BeneficiaryRepository repository;

  GetBeneficiaryUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<BeneficiaryModel>>, FailureModel>>
      execute() async {
    return await repository.getBeneficiary();
  }
}

class CreateBeneficiaryUsecase
    implements
        BaseUseCase<InputBeneficiaryModel, ResponseModel<BeneficiaryModel>> {
  final BeneficiaryRepository repository;

  CreateBeneficiaryUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>> execute(
      InputBeneficiaryModel input) async {
    return await repository.createBeneficiary(input: input);
  }
}

class GetRelationshipsUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticTextModel>>> {
  final BeneficiaryRepository repository;

  GetRelationshipsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      execute() async {
    return await repository.getRelationships();
  }
}

class UpdateBeneficiaryUsecase
    implements
        BaseUseCase<({int id, InputBeneficiaryModel model}),
            ResponseModel<BeneficiaryModel>> {
  final BeneficiaryRepository repository;

  UpdateBeneficiaryUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>> execute(
      ({int id, InputBeneficiaryModel model}) input) async {
    return await repository.updateBeneficiary(id: input.id, input: input.model);
  }
}

class DeleteBeneficiaryUsecase implements BaseUseCase<int, ResponseModel> {
  final BeneficiaryRepository repository;

  DeleteBeneficiaryUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(int id) async {
    return await repository.deleteBeneficiary(id: id);
  }
}
