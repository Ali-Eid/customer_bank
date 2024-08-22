part of 'withdrawal_bloc.dart';

@freezed
class WithdrawalEvent with _$WithdrawalEvent {
  const factory WithdrawalEvent.getWithDrawalValues(
      {@Default(true) bool isLoading}) = _GetWithDrawalValues;
}
