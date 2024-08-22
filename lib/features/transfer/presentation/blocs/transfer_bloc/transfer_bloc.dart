import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/auth/domain/models/login_model/input_login/input_login_model.dart';
import 'package:fs_bank/features/auth/domain/usecases/auth_usecases.dart';
import 'package:fs_bank/features/transfer/domain/models/inputs_models/input_transfer_model.dart';
import 'package:fs_bank/features/transfer/domain/usecases/transfer_usecases.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';
part 'transfer_bloc.freezed.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final TransferMyAccountUsecase transferMyAccountUsecase;
  final LoginUsecase loginUsecase;
  final AppPreferences appPreferences;
  TransferBloc(
      {required this.transferMyAccountUsecase,
      required this.loginUsecase,
      required this.appPreferences})
      : super(const _Initial()) {
    on<TransferEvent>((event, emit) async {
      await event.map(
        transferMyAccounts: (value) async {
          emit(const TransferState.loading());
          // final failureOrSuccess = await loginUsecase.execute(InputLoginModel(
          //     phoneNumber: appPreferences.getUserInfo()?.phoneNumber ?? "0",
          //     otp: value.otp));
          if (value.otp == "111111") {
            final failureOrTransfer =
                await transferMyAccountUsecase.execute(value.input);
            failureOrTransfer.when(
              (success) {
                emit(TransferState.success(message: success.message));
              },
              (error) {
                emit(TransferState.error(message: error.message));
              },
            );
          } else {
            emit(const TransferState.error(message: "Invalid otp "));
          }
        },
      );
    });
  }
}
