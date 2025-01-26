part of 'transfer_bloc.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState.initial() = _Initial;
  const factory TransferState.loading() = _Loading;
  const factory TransferState.successStoreLocalTransfer(
          {required ResponseModel<StoreTransferModel> store}) =
      _SuccessStoreLocalTransfer;
  const factory TransferState.successStoreInternalTransfer(
          {required ResponseModel<StoreTransferModel> store}) =
      _SuccessStoreInternalTransfer;
  const factory TransferState.successConfirmInternalTransfer(
          {required ResponseModel<ConfirmTransferModel> confirm}) =
      _SuccessConfirmInternalTransfer;
  const factory TransferState.successConfirmLocalTransfer(
          {required ResponseModel<ConfirmTransferModel> confirm}) =
      _SuccessConfirmLocalTransfer;
  const factory TransferState.error({required String message}) = _Error;
}
