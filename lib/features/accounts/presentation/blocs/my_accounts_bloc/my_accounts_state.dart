part of 'my_accounts_bloc.dart';

@freezed
class MyAccountsState with _$MyAccountsState {
  const factory MyAccountsState.loading() = _Loading;
  const factory MyAccountsState.loaded(
      {required ResponseModel<List<AccountModel>> accounts}) = _Loaded;
  const factory MyAccountsState.error({required String message}) = _Error;
}
