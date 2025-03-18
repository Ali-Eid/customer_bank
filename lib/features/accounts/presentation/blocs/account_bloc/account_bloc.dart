import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';
import 'package:path_provider/path_provider.dart';

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
                successPdf: false,
                transactions: const AccountStatementModel()));
            final failureOrAccounts =
                await getAccountStatementsUsecase.execute((
              accountId: value.accountId,
              export: false,
              view: true,
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
                    successPdf: false,
                    messageErrorStatements: error.message));
              },
            );
          },
          exportAccountStatements: (value) async {
            emit(state.copyWith(
                isLoadingExport: true,
                hasErrorExport: false,
                successPdf: false));
            final failureOrAccounts =
                await getAccountStatementsUsecase.execute((
              accountId: value.accountId,
              export: true,
              view: false,
              maxPeriod: value.maxPeriod
            ));
            await failureOrAccounts.when(
              (success) async {
                // Decode Base64 string to bytes
                Uint8List bytes = base64Decode(success.data.pdf);
                Directory directory = await getApplicationDocumentsDirectory();
                String filePath = '${directory.path}/transactions.pdf';
                // Write the file
                File file = File(filePath);
                await file.writeAsBytes(bytes);
                // Get the app's document directory

                emit(state.copyWith(
                    isLoadingExport: false, pdf: filePath, successPdf: true));
              },
              (error) {
                emit(state.copyWith(
                    isLoadingExport: false,
                    successPdf: false,
                    hasErrorExport: true,
                    messageErrorExport: error.message));
              },
            );
          },
        );
      },
    );
  }
}
