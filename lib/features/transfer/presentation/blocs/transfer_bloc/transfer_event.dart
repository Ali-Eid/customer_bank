part of 'transfer_bloc.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.storeLocalTransferMyAccounts(
      {required InputTransferModel input}) = _StoreLocalTransferMyAccounts;
  const factory TransferEvent.storeInternalTransferMyAccounts(
      {required InputTransferModel input}) = _StoreInternalTransferMyAccounts;
  const factory TransferEvent.confirmLocalTransferMyAccounts(
          {required InputConfirmTransferModel input}) =
      _ConfirmLocalTransferMyAccounts;
  const factory TransferEvent.confirmInternalTransferMyAccounts(
          {required InputConfirmTransferModel input}) =
      _ConfirmInternalTransferMyAccounts;
}
