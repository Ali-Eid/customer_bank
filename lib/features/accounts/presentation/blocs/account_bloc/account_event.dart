part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.getAccounts() = _GetAccounts;
  const factory AccountEvent.getAccountStatementsSettings() =
      _GetAccountStatementsSettings;
  const factory AccountEvent.getAccountStatements({
    required int accountId,
    bool? view,
    int? maxPeriod,
  }) = _GetAccountStatements;
}
