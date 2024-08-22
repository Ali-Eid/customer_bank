part of 'transfer_bloc.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState.initial() = _Initial;
  const factory TransferState.loading() = _Loading;
  const factory TransferState.success({required String message}) = _Success;
  const factory TransferState.error({required String message}) = _Error;
}
