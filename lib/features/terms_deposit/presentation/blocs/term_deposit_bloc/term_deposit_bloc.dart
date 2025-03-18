import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/inputs_models/input_requrest_terms_deposit_model/input_request_terms_deposit_model.dart';
import '../../../domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';
import '../../../domain/usecases/terms_deposit_usecase.dart';

part 'term_deposit_event.dart';
part 'term_deposit_state.dart';
part 'term_deposit_bloc.freezed.dart';

class TermDepositBloc extends Bloc<TermDepositEvent, TermDepositState> {
  final GetPackagesTermsDepositUsecase getPackagesTermsDepositUsecase;
  final RequestTermsDepositUsecase requestTermsDepositUsecase;
  TermDepositBloc(
      {required this.getPackagesTermsDepositUsecase,
      required this.requestTermsDepositUsecase})
      : super(const _Initial()) {
    on<TermDepositEvent>((event, emit) async {
      await event.map(
        getPackagesTermsDeposit: (value) async {
          emit(state.copyWith(
              isLoadingPackages: true, hasErrorPackages: false, packages: []));
          final failureOrPackages =
              await getPackagesTermsDepositUsecase.execute();
          failureOrPackages.when(
            (success) {
              emit(state.copyWith(
                  isLoadingPackages: false,
                  hasErrorPackages: false,
                  packages: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingPackages: false,
                  hasErrorPackages: true,
                  errorMessagePackages: error.message));
            },
          );
        },
        requestTermsDeposit: (value) async {
          emit(state.copyWith(
            isLoadingTermsDeposit: true,
            hasErrorTermsDeposit: false,
          ));
          final failureOrTermsDeposit =
              await requestTermsDepositUsecase.execute(value.input);
          failureOrTermsDeposit.when(
            (success) {
              emit(state.copyWith(
                  isLoadingTermsDeposit: false,
                  hasErrorTermsDeposit: false,
                  successTermsDeposit: true));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingTermsDeposit: false,
                  hasErrorTermsDeposit: true,
                  successTermsDeposit: false,
                  errorMessageTermsDeposit: error.message));
            },
          );
        },
      );
    });
  }
}
