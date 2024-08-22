import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/cards/domain/models/withdrawel_values_model/with_drawel_values_model.dart';
import '../../../domain/usecases/card_usecases.dart';
part 'withdrawal_event.dart';
part 'withdrawal_state.dart';
part 'withdrawal_bloc.freezed.dart';

class WithdrawalBloc extends Bloc<WithdrawalEvent, WithdrawalState> {
  final GetWithDrawelValues getWithDrawelValues;
  List<WithDrawelValuesModel> valuesWithDrawal = [];
  WithdrawalBloc({required this.getWithDrawelValues})
      : super(const WithdrawalState.initial()) {
    on<WithdrawalEvent>((event, emit) async {
      await event.map(
        getWithDrawalValues: (value) async {
          if (value.isLoading) {
            valuesWithDrawal.clear();
            emit(const WithdrawalState.loading());
          }
          final failureOrValues = await getWithDrawelValues.execute();
          failureOrValues.when(
            (success) {
              if (!value.isLoading) {
                valuesWithDrawal.clear();
              }
              valuesWithDrawal.addAll(success.data);
              // valuesWithDrawal.sort(
              //   (a, b) => a.id.compareTo(b.id),
              // );
              emit(WithdrawalState.loaded(values: success));
            },
            (error) {
              emit(WithdrawalState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
