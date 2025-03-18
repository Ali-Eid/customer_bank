import 'package:bloc/bloc.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/page_chequebook_model/page_chequebook_model.dart';

class InputChequebookCubit extends Cubit<int> {
  InputChequebookCubit(super.initialState);

  AccountModel? account;
  setAccount(AccountModel? account) {
    this.account = account;
    emit(account.hashCode);
  }

  PageChequebookModel? page;
  setPageChequebook(PageChequebookModel? page) {
    this.page = page;
    emit(page.hashCode);
  }
}
