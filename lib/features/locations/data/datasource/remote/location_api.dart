import 'package:dio/dio.dart';
import 'package:fs_bank/features/locations/domain/models/branch_model/branch_model.dart';
import 'package:fs_bank/features/locations/domain/models/location_model/location_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/constants/endpoints.dart';

part 'location_api.g.dart';

@RestApi(baseUrl: Endpoints.LOCATIONS_API)
abstract class LocationServiceClient {
  factory LocationServiceClient(Dio dio, {String baseUrl}) =
      _LocationServiceClient;

  @GET(Endpoints.BRANCHES)
  Future<HttpResponse<ResponseModel<List<BranchModel>>>> getBranches();
  @GET(Endpoints.ATMS)
  Future<HttpResponse<ResponseModel<List<LocationModel>>>> getAtmLocations();
  @GET(Endpoints.POS)
  Future<HttpResponse<ResponseModel<List<LocationModel>>>> getPosLocations();
  @GET(Endpoints.CITIES)
  Future<HttpResponse<ResponseModel<List<LocationModel>>>> getCitiesLocations();
}
