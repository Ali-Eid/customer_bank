part of 'transfer_sygs_bloc.dart';

@freezed
class TransferSygsState with _$TransferSygsState {
  const factory TransferSygsState.initial({
    @Default(false) bool isLoadingSYGSTransfer,
    @Default(false) bool successSYGSTransfer,
    @Default("") String messageSuccessSYGSTransfer,
    @Default(false) bool hasErrorSYGSTransfer,
    @Default("") String messageErrorSYGSTransfer,
    //--------------
    @Default(false) bool isLoadingGetBanks,
    @Default(false) bool successGetBanks,
    @Default(false) bool hasErrorGetBanks,
    @Default("") String messageErrorGetBanks,
    @Default([]) List<StaticModel> banks,
    //------
    @Default(false) bool isLoadingGetTransferReasons,
    @Default(false) bool successGetTransferReasons,
    @Default(false) bool hasErrorGetTransferReasons,
    @Default("") String messageErrorGetTransferReasons,
    @Default([]) List<StaticTextModel> transferReasons,
  }) = _Initial;
}
