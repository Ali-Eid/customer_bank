import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/locations/domain/models/branch_model/branch_model.dart';
import 'package:fs_bank/features/locations/domain/models/location_model/location_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class LocationRepository {
  Future<Result<ResponseModel<List<BranchModel>>, FailureModel>> getBranches();
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>> getPos();
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>> getAtm();
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>> getCities();
}
