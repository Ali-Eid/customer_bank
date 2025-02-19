part of 'term_deposit_bloc.dart';

@freezed
class TermDepositEvent with _$TermDepositEvent {
  const factory TermDepositEvent.getPackagesTermsDeposit() =
      _GetPackagesTermsDeposit;
  const factory TermDepositEvent.requestTermsDeposit(
      {required InputRequestTermsDepositModel input}) = _RequestTermsDeposit;
}
