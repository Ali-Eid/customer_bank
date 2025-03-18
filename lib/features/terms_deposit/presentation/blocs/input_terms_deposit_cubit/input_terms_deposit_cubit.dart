import 'package:bloc/bloc.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

import '../../../domain/models/package_terms_deposit_model/package_terms_deposit_model.dart';

class InputTermsDepositCubit extends Cubit<int> {
  InputTermsDepositCubit(super.initialState);

  int? accountId;
  setAccount(AccountModel? account) {
    accountId = account?.id;
    emit(account.hashCode);
  }

  int? packageId;
  setPackage(PackageTermsDepositModel? package) {
    packageId = package?.id;
    emit(package.hashCode);
  }
}
