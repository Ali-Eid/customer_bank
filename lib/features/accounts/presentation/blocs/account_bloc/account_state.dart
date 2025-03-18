part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default("") String messageError,
    @Default([]) List<AccountModel> accounts,
    @Default(false) bool isLoadingStatements,
    @Default(false) bool hasErrorStatements,
    @Default("") String messageErrorStatements,
    @Default(AccountStatementModel()) AccountStatementModel transactions,
    @Default(false) bool isLoadingStatementsSettings,
    @Default(false) bool hasErrorStatementsSettings,
    @Default("") String messageErrorStatementsSettings,
    @Default(AccountStatementSettingsModel())
    AccountStatementSettingsModel statementsSettings,
    @Default(false) bool isLoadingExport,
    @Default(false) bool hasErrorExport,
    @Default("") String messageErrorExport,
    @Default("") String pdf,  
    @Default(false) bool successPdf,  
  }) = _Initial;
}
