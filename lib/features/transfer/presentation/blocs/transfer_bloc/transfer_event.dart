part of 'transfer_bloc.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.transferMyAccounts(
      {required String otp,
      required InputTransferModel input}) = _TransferMyAccounts;
}
