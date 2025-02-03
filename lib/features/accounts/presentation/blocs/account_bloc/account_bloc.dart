import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';

import '../../../domain/models/account_model/account_model.dart';
import '../../../domain/models/account_statement_model/account_statement_model.dart';
import '../../../domain/models/account_statement_settings_model/account_statement_settings_model.dart';
import '../../../domain/usecases/account_usecases.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final GetMyAccountsUsecase getMyAccountsUsecase;
  final GetAccountStatementsSettingsUsecase getAccountStatementsSettingsUsecase;
  final GetAccountStatementsUsecase getAccountStatementsUsecase;
  final AppPreferences appPreferences;
  int? period;
  AccountBloc(
      {required this.getMyAccountsUsecase,
      required this.getAccountStatementsSettingsUsecase,
      required this.getAccountStatementsUsecase,
      required this.appPreferences})
      : super(const _Initial()) {
    on<AccountEvent>(
      (event, emit) async {
        await event.map(
          getAccounts: (value) async {
            emit(state.copyWith(
                isLoading: true,
                hasError: false,
                accounts: appPreferences.getList<AccountModel>(
                    KeysPreferences.PREFS_KEY_ACCOUNTS,
                    AccountModel.fromJson)));
            final failureOrAccounts = await getMyAccountsUsecase
                .execute(appPreferences.getUserInfo()?.customerId ?? 0);
            await failureOrAccounts.when(
              (success) async {
                await appPreferences.saveList<AccountModel>(
                    KeysPreferences.PREFS_KEY_ACCOUNTS,
                    success.data.map((e) => e.toJson()).toList());
                emit(state.copyWith(isLoading: false, accounts: success.data));
              },
              (error) {
                emit(state.copyWith(
                    isLoading: false,
                    hasError: true,
                    messageError: error.message));
              },
            );
          },
          getAccountStatementsSettings: (value) async {
            emit(state.copyWith(
                isLoadingStatementsSettings: true,
                hasErrorStatementsSettings: false,
                statementsSettings: const AccountStatementSettingsModel()));
            final failureOrAccounts =
                await getAccountStatementsSettingsUsecase.execute();
            await failureOrAccounts.when(
              (success) async {
                emit(state.copyWith(
                    isLoadingStatementsSettings: false,
                    statementsSettings: success.data));
              },
              (error) {
                emit(state.copyWith(
                    isLoadingStatementsSettings: false,
                    hasErrorStatementsSettings: true,
                    messageErrorStatementsSettings: error.message));
              },
            );
          },
          getAccountStatements: (value) async {
            period = value.maxPeriod;
            emit(state.copyWith(
                isLoadingStatements: true,
                hasErrorStatements: false,
                transactions: const AccountStatementModel()));
            final failureOrAccounts = await getAccountStatementsUsecase
                .execute((
              accountId: value.accountId,
              view: value.view,
              maxPeriod: value.maxPeriod
            ));
            failureOrAccounts.when(
              (success) {
                emit(state.copyWith(
                    isLoadingStatements: false, transactions: success.data));
              },
              (error) {
                emit(state.copyWith(
                    isLoadingStatements: false,
                    hasErrorStatements: true,
                    messageErrorStatements: error.message));
              },
            );
          },
        );
      },
    );
  }
}
