part of 'types_bloc.dart';

@freezed
class TypesEvent with _$TypesEvent {
  const factory TypesEvent.getCardTypes() = _GetCardTypes;
  const factory TypesEvent.getBeneficiaryType() = _GetBeneficiaryType;
}
