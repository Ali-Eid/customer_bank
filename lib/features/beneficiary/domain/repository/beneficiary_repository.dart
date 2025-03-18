import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/beneficiary/domain/models/beneficiary_model/beneficiary_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../models/input_beneficiary_model/input_beneficiary_model.dart';

abstract class BeneficiaryRepository {
  Future<Result<ResponseModel<List<BeneficiaryModel>>, FailureModel>>
      getBeneficiary();
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>>
      createBeneficiary({required InputBeneficiaryModel input});
  Future<Result<ResponseModel<BeneficiaryModel>, FailureModel>>
      updateBeneficiary(
          {required int id, required InputBeneficiaryModel input});
  Future<Result<ResponseModel, FailureModel>> deleteBeneficiary(
      {required int id});
  Future<Result<ResponseModel<List<StaticTextModel>>, FailureModel>>
      getRelationships();
}
