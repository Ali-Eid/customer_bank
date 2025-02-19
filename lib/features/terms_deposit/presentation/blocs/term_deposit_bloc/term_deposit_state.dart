part of 'term_deposit_bloc.dart';

@freezed
class TermDepositState with _$TermDepositState {
  const factory TermDepositState.initial({
    @Default(false) bool isLoadingPackages,
    @Default(false) bool hasErrorPackages,
    @Default("") String errorMessagePackages,
    @Default([]) List<PackageTermsDepositModel> packages,
    @Default(false) bool isLoadingTermsDeposit,
    @Default(false) bool hasErrorTermsDeposit,
    @Default("") String errorMessageTermsDeposit,
    @Default(false) bool successTermsDeposit,
  }) = _Initial;
}
