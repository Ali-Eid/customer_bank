part of 'my_accounts_bloc.dart';

@freezed
class MyAccountsEvent with _$MyAccountsEvent {
  const factory MyAccountsEvent.getMyAccounts(
      {required int customerId,
      @Default(true) bool isLoading}) = _GetMyAccounts;
}
