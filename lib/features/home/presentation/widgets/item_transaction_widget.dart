import 'package:flutter/material.dart';

import '../../../../core/bases/enums/transaction_type.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../accounts/domain/models/account_statement_model/account_statement_model.dart';

class ItemTransactionWidget extends StatelessWidget {
  final TransactionModel model;
  const ItemTransactionWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(AppSizeW.s4),
        child: Card(
            elevation: 2,
            shadowColor: ColorManager.primary,
            child: Padding(
              padding: EdgeInsets.all(AppSizeW.s4),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.type,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      model.date,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "${model.type == TransactionType.Deposit.name ? "+" : "-"}${model.amount}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color:
                                    model.type == TransactionType.Deposit.name
                                        ? ColorManager.emerald
                                        : ColorManager.persimmon)),
                    Text(
                      "${model.runningBalance}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )
              ]),
            )));
  }
}
