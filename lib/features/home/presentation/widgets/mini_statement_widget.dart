import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/generic_drop_down_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../accounts/presentation/blocs/account_bloc/account_bloc.dart';
import 'item_transaction_widget.dart';

class MiniStatementsWidget extends StatelessWidget {
  final int accountId;
  const MiniStatementsWidget({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<AccountBloc>()
        .add(AccountEvent.getAccountStatements(accountId: accountId));
    context
        .read<AccountBloc>()
        .add(const AccountEvent.getAccountStatementsSettings());

    return BlocBuilder(
      bloc: context.read<AccountBloc>(),
      builder: (context, AccountState state) {
        if (state.isLoadingStatements) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
                child: Text(
                  AppStrings().transactions,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Expanded(
                child: Center(
                    child: LoadingWidget(
                  height: AppSizeH.s75,
                )),
              ),
            ],
          );
        }
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
              child: Text(
                AppStrings().transactions,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSizeW.s4),
              child: GenericDropdownField<int>(
                hintText: AppStrings().statementPeriod,
                isLoading: state.isLoadingStatementsSettings,
                items: List.generate(state.statementsSettings.viewMaxPeriod,
                    (index) => index + 1),
                itemToString: (value) => value.toString(),
                selectedValue: context.read<AccountBloc>().period,
                menuMaxHeight: AppSizeH.s200,
                onChanged: (value) {
                  context.read<AccountBloc>().add(
                      AccountEvent.getAccountStatements(
                          accountId: accountId, view: true, maxPeriod: value));
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.transactions.transactions.length,
                itemBuilder: (context, index) {
                  return ItemTransactionWidget(
                      model: state.transactions.transactions[index]);
                },
              ),
            )
          ],
        );
      },
    );
  }
}
