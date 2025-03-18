import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/transfer/domain/usecases/transfer_usecases.dart';

import '../../../domain/models/transfer_sygs_model/input_transfer_sygs_model.dart';

part 'transfer_sygs_event.dart';
part 'transfer_sygs_state.dart';
part 'transfer_sygs_bloc.freezed.dart';

class TransferSygsBloc extends Bloc<TransferSygsEvent, TransferSygsState> {
  final SYGSTransferUsecase sygsTransferUsecase;
  final GetBanksUsecase getBanksUsecase;
  final GetTransferSYGSReasonsUsecase getTransferSYGSReasonsUsecase;
  TransferSygsBloc(
      {required this.sygsTransferUsecase,
      required this.getBanksUsecase,
      required this.getTransferSYGSReasonsUsecase})
      : super(const _Initial()) {
    on<TransferSygsEvent>((event, emit) async {
      await event.map(
        transferSYGS: (value) async {
          emit(state.copyWith(
              isLoadingSYGSTransfer: true,
              hasErrorSYGSTransfer: false,
              successSYGSTransfer: false));
          final failureOrTransfer =
              await sygsTransferUsecase.execute(value.input);
          failureOrTransfer.when(
            (success) {
              emit(state.copyWith(
                  successSYGSTransfer: true,
                  isLoadingSYGSTransfer: false,
                  messageSuccessSYGSTransfer: success.message));
            },
            (error) {
              emit(state.copyWith(
                  hasErrorSYGSTransfer: true,
                  isLoadingSYGSTransfer: false,
                  successSYGSTransfer: false,
                  messageErrorSYGSTransfer: error.message));
            },
          );
        },
        getBanks: (value) async {
          emit(state.copyWith(
              isLoadingGetBanks: true, hasErrorGetBanks: false, banks: []));
          final failureOrTransfer = await getBanksUsecase.execute();
          failureOrTransfer.when(
            (success) {
              emit(state.copyWith(
                  isLoadingGetBanks: false, banks: success.data));
            },
            (error) {
              emit(state.copyWith(
                  hasErrorGetBanks: true,
                  isLoadingGetBanks: false,
                  messageErrorGetBanks: error.message));
            },
          );
        },
        getTransferSYGSReason: (value) async {
          emit(state.copyWith(
              isLoadingGetTransferReasons: true,
              hasErrorGetTransferReasons: false,
              transferReasons: []));
          final failureOrTransfer =
              await getTransferSYGSReasonsUsecase.execute();
          failureOrTransfer.when(
            (success) {
              emit(state.copyWith(
                  isLoadingGetTransferReasons: false,
                  transferReasons: success.data));
            },
            (error) {
              emit(state.copyWith(
                  hasErrorGetTransferReasons: true,
                  isLoadingGetTransferReasons: false,
                  messageErrorGetTransferReasons: error.message));
            },
          );
        },
      );
    });
  }
}
