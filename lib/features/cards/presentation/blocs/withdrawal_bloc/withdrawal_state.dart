part of 'withdrawal_bloc.dart';

@freezed
class WithdrawalState with _$WithdrawalState {
  const factory WithdrawalState.initial() = _Initial;
  const factory WithdrawalState.loading() = _Loading;
  const factory WithdrawalState.loaded(
      {required ResponseModel<List<WithDrawelValuesModel>> values}) = _Loaded;
  const factory WithdrawalState.error({required String message}) = _Error;
}
