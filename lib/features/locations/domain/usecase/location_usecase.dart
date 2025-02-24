import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/locations/domain/models/branch_model/branch_model.dart';
import 'package:fs_bank/features/locations/domain/models/location_model/location_model.dart';
import 'package:fs_bank/features/locations/domain/repository/location_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetBranchesLocationUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<BranchModel>>> {
  final LocationRepository repository;

  GetBranchesLocationUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<BranchModel>>, FailureModel>>
      execute() async {
    return await repository.getBranches();
  }
}

class GetAtmLocationUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<LocationModel>>> {
  final LocationRepository repository;

  GetAtmLocationUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      execute() async {
    return await repository.getAtm();
  }
}

class GetPosLocationUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<LocationModel>>> {
  final LocationRepository repository;

  GetPosLocationUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      execute() async {
    return await repository.getPos();
  }
}

class GetCitiesLocationUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<LocationModel>>> {
  final LocationRepository repository;

  GetCitiesLocationUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      execute() async {
    return await repository.getCities();
  }
}
