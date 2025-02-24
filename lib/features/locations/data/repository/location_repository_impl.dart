import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';

import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/locations/data/datasource/remote/location_api.dart';

import 'package:fs_bank/features/locations/domain/models/branch_model/branch_model.dart';

import 'package:fs_bank/features/locations/domain/models/location_model/location_model.dart';

import 'package:multiple_result/src/result.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationServiceClient locationServiceClient;
  final NetworkInfo networkInfo;

  LocationRepositoryImpl(
      {required this.locationServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      getAtm() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await locationServiceClient.getAtmLocations();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }

  @override
  Future<Result<ResponseModel<List<BranchModel>>, FailureModel>>
      getBranches() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await locationServiceClient.getBranches();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }

  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      getCities() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await locationServiceClient.getCitiesLocations();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }

  @override
  Future<Result<ResponseModel<List<LocationModel>>, FailureModel>>
      getPos() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await locationServiceClient.getPosLocations();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetConnection));
    }
  }
}
