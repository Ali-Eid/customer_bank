import 'package:flutter/material.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:fs_bank/features/accounts/domain/models/account_model/account_model.dart';

import '../../../../core/constants/values_manager.dart';

class AccountHomeWidget extends StatelessWidget {
  final AccountModel model;
  const AccountHomeWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s16),
      height: AppSizeH.s220,
      width: AppSizeW.s170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s8),
          // image: DecorationImage(
          // image: AssetImage(model.type == CardType.credit.name
          //     ? ImageAssets.cardCredit
          //     : ImageAssets.cardDebate),
          // ),
          color: ColorManager.secondary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.accountType.name,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold, color: ColorManager.white),
          ),
          SizedBox(height: AppSizeH.s17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Your Balance",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              Row(
                children: [
                  Text(
                    '\$',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorManager.primary,
                          fontSize: AppSizeSp.s22,
                        ),
                  ),
                  Text(
                    model.balance.toString(),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: AppSizeSp.s22,
                        ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Account number",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
              SizedBox(height: AppSizeH.s4),
              Text(
                model.accountNumber,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.primary),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s22),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                model.status,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
