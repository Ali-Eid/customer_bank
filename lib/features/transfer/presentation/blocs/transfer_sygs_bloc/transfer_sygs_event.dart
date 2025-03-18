part of 'transfer_sygs_bloc.dart';

@freezed
class TransferSygsEvent with _$TransferSygsEvent {
  const factory TransferSygsEvent.transferSYGS(
      {required InputTransferSygsModel input}) = _TransferSYGS;
  const factory TransferSygsEvent.getBanks() = _GetBanks;
  const factory TransferSygsEvent.getTransferSYGSReason() =
      _GetTransferSYGSReason;
}
