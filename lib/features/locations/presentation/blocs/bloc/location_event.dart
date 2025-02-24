part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getMyLocation() = _GetMyLocation;
  const factory LocationEvent.getBranchesLocation() = _GetBranchesLocation;
  const factory LocationEvent.getAtmsLocation() = _GetAtmsLocation;
  const factory LocationEvent.getPosLocation() = _GetPosLocation;
  const factory LocationEvent.getCitiesLocation() = _GetCitesLocation;
}
