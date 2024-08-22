import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/accounts/domain/usecases/account_usecases.dart';

part 'my_accounts_event.dart';
part 'my_accounts_state.dart';
part 'my_accounts_bloc.freezed.dart';

class MyAccountsBloc extends Bloc<MyAccountsEvent, MyAccountsState> {
  final GetMyAccountsUsecase getMyAccountsUsecase;
  List<AccountModel> accounts = [];
  MyAccountsBloc({required this.getMyAccountsUsecase})
      : super(const MyAccountsState.loading()) {
    on<MyAccountsEvent>((event, emit) async {
      await event.map(
        getMyAccounts: (value) async {
          if (value.isLoading) {
            accounts.clear();
            emit(const MyAccountsState.loading());
          }

          final failureOrAccounts =
              await getMyAccountsUsecase.execute(value.customerId);
          failureOrAccounts.when(
            (success) {
              accounts.clear();
              accounts.addAll(success.data);
              if (!value.isLoading) {
                accounts.sort((a, b) => a.id.compareTo(b.id));
              }
              emit(MyAccountsState.loaded(accounts: success));
            },
            (error) {
              emit(MyAccountsState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
