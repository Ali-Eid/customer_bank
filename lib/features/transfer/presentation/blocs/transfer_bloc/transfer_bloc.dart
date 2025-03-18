import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/usecases/auth_usecases.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_confirm_transfer_model/input_confirm_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/usecases/transfer_usecases.dart';

import '../../../domain/models/transfere_model/transfere_model.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';
part 'transfer_bloc.freezed.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final AppPreferences appPreferences;
  final StoreLocalTransferMyAccountUsecase storeLocalTransferMyAccountUsecase;
  final StoreInternalTransferMyAccountUsecase
      storeInternalTransferMyAccountUsecase;
  final ConfirmInternalTransferMyAccountUsecase
      confirmInternalTransferMyAccountUsecase;
  final ConfirmLocalTransferMyAccountUsecase
      confirmLocalTransferMyAccountUsecase;
  TransferBloc({
    required this.appPreferences,
    required this.storeLocalTransferMyAccountUsecase,
    required this.storeInternalTransferMyAccountUsecase,
    required this.confirmInternalTransferMyAccountUsecase,
    required this.confirmLocalTransferMyAccountUsecase,
  }) : super(const _Initial()) {
    on<TransferEvent>((event, emit) async {
      await event.map(
        storeLocalTransferMyAccounts: (value) async {
          emit(const TransferState.loading());
          final failureOrStore =
              await storeLocalTransferMyAccountUsecase.execute(value.input);
          failureOrStore.when(
            (success) {
              emit(TransferState.successStoreLocalTransfer(store: success));
            },
            (error) {
              emit(TransferState.error(message: error.message));
            },
          );
        },
        storeInternalTransferMyAccounts: (value) async {
          emit(const TransferState.loading());
          final failureOrStore =
              await storeInternalTransferMyAccountUsecase.execute(value.input);
          failureOrStore.when(
            (success) {
              emit(TransferState.successStoreInternalTransfer(store: success));
            },
            (error) {
              emit(TransferState.error(message: error.message));
            },
          );
        },
        confirmLocalTransferMyAccounts: (value) async {
          emit(const TransferState.loading());
          final failureOrStore =
              await confirmLocalTransferMyAccountUsecase.execute(value.input);
          failureOrStore.when(
            (success) {
              emit(TransferState.successConfirmLocalTransfer(confirm: success));
            },
            (error) {
              emit(TransferState.error(message: error.message));
            },
          );
        },
        confirmInternalTransferMyAccounts: (value) async {
          emit(const TransferState.loading());
          final failureOrStore = await confirmInternalTransferMyAccountUsecase
              .execute(value.input);
          failureOrStore.when(
            (success) {
              emit(TransferState.successConfirmInternalTransfer(
                  confirm: success));
            },
            (error) {
              emit(TransferState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
