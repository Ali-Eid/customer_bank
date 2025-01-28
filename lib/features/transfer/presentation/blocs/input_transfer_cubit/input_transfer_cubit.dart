import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

class InputTransferCubit extends Cubit<int> {
  InputTransferCubit(super.initialState);

  AccountModel? fromAccount;
  AccountModel? toAccount;
  List<AccountModel> fromAccounts = [];
  List<AccountModel> toAccounts = [];
  final toAccountNoController = TextEditingController();

  void setAccounts(List<AccountModel> accounts) {
    fromAccounts.addAll(accounts);
    toAccounts.addAll(accounts);
    emit(Random().nextInt(100));
  }

  void setFromAccount(AccountModel? account) {
    fromAccount = account;
    toAccounts = List.from(toAccounts
        .where(
          (element) => element != account,
        )
        .toList());
    emit(Random().nextInt(100));
  }

  void setToAccount(AccountModel? account) {
    toAccount = account;
    fromAccounts = List.from(fromAccounts
        .where(
          (element) => element != account,
        )
        .toList());
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
