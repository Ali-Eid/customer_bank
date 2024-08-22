import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_card_model/request_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_inactive_card/request_inactive_card_model.dart';
import 'package:fs_bank/features/cards/domain/models/Inputs/request_increase_withdrawal_value/request_increase_withdrawal_value_model.dart';
import 'package:fs_bank/features/cards/domain/usecases/card_usecases.dart';

part 'request_card_event.dart';
part 'request_card_state.dart';
part 'request_card_bloc.freezed.dart';

class RequestCardBloc extends Bloc<RequestCardEvent, RequestCardState> {
  final RequestInActiveCardUsecase requestInActiveCardUsecase;
  final RequestNewCardUsecase requestNewCardUsecase;
  final RequestIncreaseWithdrawalUsecase requestIncreaseWithdrawalUsecase;
  RequestCardBloc(
      {required this.requestInActiveCardUsecase,
      required this.requestNewCardUsecase,
      required this.requestIncreaseWithdrawalUsecase})
      : super(const _Initial()) {
    on<RequestCardEvent>((event, emit) async {
      await event.map(
        newCard: (value) async {
          emit(const RequestCardState.loading());
          final failureOrSuccess =
              await requestNewCardUsecase.execute(value.request);
          failureOrSuccess.when(
            (success) {
              emit(RequestCardState.success(message: success.message));
            },
            (error) {
              emit(RequestCardState.error(message: error.message));
            },
          );
        },
        inActiveCard: (value) async {
          emit(const RequestCardState.loading());
          final failureOrSuccess =
              await requestInActiveCardUsecase.execute(value.request);
          failureOrSuccess.when(
            (success) {
              emit(RequestCardState.success(message: success.message));
            },
            (error) {
              emit(RequestCardState.error(message: error.message));
            },
          );
        },
        editWithdrawalCard: (value) async {
          emit(const RequestCardState.loading());
          final failureOrSuccess =
              await requestIncreaseWithdrawalUsecase.execute(value.request);
          failureOrSuccess.when(
            (success) {
              emit(RequestCardState.success(message: success.message));
            },
            (error) {
              emit(RequestCardState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
