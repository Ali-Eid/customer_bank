part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial({
    @Default(false) bool isLoadingMyLocation,
    @Default(false) bool isHasErrorMyLocation,
    @Default("") String errorMessageMyLocation,
    @Default(false) bool isSuccessMyLocation,
    @Default(null) LocationData? myLocation,
    //branches
    @Default(false) bool isLoadingBranches,
    @Default(false) bool isHasErrorBranches,
    @Default("") String errorMessageBranches,
    @Default([]) List<BranchModel> branches,
    //locations
    @Default(false) bool isLoadingLocations,
    @Default(false) bool isHasErrorLocations,
    @Default("") String errorMessageLocations,
    @Default([]) List<LocationModel> locations,
  }) = _Initial;
}
