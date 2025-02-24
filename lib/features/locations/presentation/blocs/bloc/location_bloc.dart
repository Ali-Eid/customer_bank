import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/features/locations/domain/models/branch_model/branch_model.dart';
import 'package:fs_bank/features/locations/domain/models/location_model/location_model.dart';
import 'package:fs_bank/features/locations/domain/usecase/location_usecase.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

import '../../../../../core/constants/values_manager.dart';
import '../../../../../core/themes/color_manager.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final GetBranchesLocationUsecase getBranchesLocationUsecase;
  final GetAtmLocationUsecase getAtmLocationUsecase;
  final GetPosLocationUsecase getPosLocationUsecase;
  final GetCitiesLocationUsecase getCitiesLocationUsecase;
  final Location location;
  List<Marker> markers = [];
  LocationBloc(
      {required this.getBranchesLocationUsecase,
      required this.getAtmLocationUsecase,
      required this.getPosLocationUsecase,
      required this.getCitiesLocationUsecase,
      required this.location})
      : super(const LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.map(
        getMyLocation: (value) async {
          emit(state.copyWith(
              isLoadingMyLocation: true,
              isHasErrorMyLocation: false,
              isSuccessMyLocation: false,
              myLocation: null));
          bool serviceEnabled;
          PermissionStatus permissionGranted;
          LocationData locationData;

          serviceEnabled = await location.serviceEnabled();
          if (!serviceEnabled) {
            serviceEnabled = await location.requestService();
            if (!serviceEnabled) {
              emit(state.copyWith(
                  isLoadingMyLocation: false,
                  isHasErrorMyLocation: true,
                  errorMessageMyLocation:
                      "Location services are turned off. Please enable them to continue.",
                  isSuccessMyLocation: false,
                  myLocation: null));
            }
          }

          permissionGranted = await location.hasPermission();
          if (permissionGranted == PermissionStatus.denied) {
            permissionGranted = await location.requestPermission();
            if (permissionGranted != PermissionStatus.granted) {
              emit(state.copyWith(
                  isLoadingMyLocation: false,
                  isHasErrorMyLocation: true,
                  errorMessageMyLocation:
                      "Location permission is required to proceed. Please grant access in settings.",
                  isSuccessMyLocation: false,
                  myLocation: null));
            }
          }
          locationData = await location.getLocation();
          emit(state.copyWith(
              isLoadingMyLocation: false,
              isHasErrorMyLocation: false,
              isSuccessMyLocation: true,
              myLocation: locationData));
        },
        getBranchesLocation: (value) async {
          emit(state.copyWith(
              isLoadingBranches: true,
              isHasErrorBranches: false,
              branches: [],
              locations: []));
          final failureOrBranches = await getBranchesLocationUsecase.execute();
          failureOrBranches.when(
            (success) {
              markers.addAll(success.data
                  .map(
                    (e) => Marker(
                      width: AppSizeW.s40,
                      height: AppSizeH.s40,
                      point: LatLng(e.lat, e.long),
                      child: SvgPicture.asset(
                        IconAssets.branchIcon,
                        height: AppSizeH.s30,
                        width: AppSizeW.s30,
                      ),
                    ),
                  )
                  .toList());
              emit(state.copyWith(
                  isLoadingBranches: false,
                  isHasErrorBranches: false,
                  branches: success.data,
                  locations: []));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingBranches: false,
                  isHasErrorBranches: true,
                  errorMessageBranches: error.message,
                  branches: [],
                  locations: []));
            },
          );
        },
        getAtmsLocation: (value) async {
          markers.clear();
          emit(state.copyWith(
              isLoadingLocations: true,
              isHasErrorLocations: false,
              branches: [],
              locations: []));
          final failureOrBranches = await getAtmLocationUsecase.execute();
          failureOrBranches.when(
            (success) {
              markers.addAll(success.data
                  .map(
                    (e) => Marker(
                      width: AppSizeW.s40,
                      height: AppSizeH.s40,
                      point: LatLng(e.lat, e.long),
                      child: SvgPicture.asset(
                        IconAssets.atmIcon,
                        height: AppSizeH.s30,
                        width: AppSizeW.s30,
                      ),
                    ),
                  )
                  .toList());
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: false,
                  branches: [],
                  locations: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: true,
                  errorMessageLocations: error.message,
                  branches: [],
                  locations: []));
            },
          );
        },
        getPosLocation: (value) async {
          markers.clear();

          emit(state.copyWith(
              isLoadingLocations: true,
              isHasErrorLocations: false,
              branches: [],
              locations: []));
          final failureOrBranches = await getPosLocationUsecase.execute();
          failureOrBranches.when(
            (success) {
              markers.addAll(success.data
                  .map(
                    (e) => Marker(
                        width: AppSizeW.s40,
                        height: AppSizeH.s40,
                        point: LatLng(e.lat, e.long),
                        child: Icon(
                          Icons.point_of_sale_rounded,
                          size: AppSizeSp.s40,
                        )),
                  )
                  .toList());
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: false,
                  branches: [],
                  locations: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: true,
                  errorMessageLocations: error.message,
                  branches: [],
                  locations: []));
            },
          );
        },
        getCitiesLocation: (value) async {
          markers.clear();

          emit(state.copyWith(
              isLoadingLocations: true,
              isHasErrorLocations: false,
              branches: [],
              locations: []));
          final failureOrBranches = await getCitiesLocationUsecase.execute();
          failureOrBranches.when(
            (success) {
              markers.addAll(success.data
                  .map(
                    (e) => Marker(
                        width: AppSizeW.s40,
                        height: AppSizeH.s40,
                        point: LatLng(e.lat, e.long),
                        child: Icon(
                          Icons.location_city_rounded,
                          size: AppSizeSp.s40,
                          color: ColorManager.primary,
                        )),
                  )
                  .toList());
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: false,
                  branches: [],
                  locations: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingLocations: false,
                  isHasErrorLocations: true,
                  errorMessageLocations: error.message,
                  branches: [],
                  locations: []));
            },
          );
        },
      );
    });
  }
}
