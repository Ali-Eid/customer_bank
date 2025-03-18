import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/core/app/depndency_injection.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

class InputTransferCubit extends Cubit<int> {
  InputTransferCubit(super.initialState);

  AccountModel? fromAccount;
  AccountModel? toAccount;
  List<AccountModel> fromAccounts = instance<AppPreferences>()
      .getList<AccountModel>(
          KeysPreferences.PREFS_KEY_ACCOUNTS, AccountModel.fromJson);
  List<AccountModel> toAccounts = instance<AppPreferences>()
      .getList<AccountModel>(
          KeysPreferences.PREFS_KEY_ACCOUNTS, AccountModel.fromJson);
  final toAccountNoController = TextEditingController();

  // void setAccounts(List<AccountModel> accounts) {
  //   fromAccounts.addAll(accounts);
  //   toAccounts.addAll(accounts);
  //   emit(Random().nextInt(100));
  // }

  void setFromAccount(AccountModel? account) {
    fromAccount = account;
    toAccount = null;
    toAccounts = List.from(fromAccounts
        .where(
          (element) => element != account,
        )
        .toList());
    emit(Random().nextInt(100));
  }

  void setToAccount(AccountModel? account) {
    toAccount = account;
    emit(Random().nextInt(100));
  }

  StaticModel? bank;
  void setBank(StaticModel? bank) {
    this.bank = bank;
    emit(Random().nextInt(100));
  }

  StaticTextModel? reason;
  void setTransferReason(StaticTextModel? reason) {
    this.reason = reason;
    emit(Random().nextInt(100));
  }
}
