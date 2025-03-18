import 'package:flutter/material.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../domain/models/card_model/card_model.dart';

class CardItemWidget extends StatelessWidget {
  final CardModel model;
  const CardItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeH.s200,
      // width: MediaQuery.sizeOf(context).width * 0.9,
      padding: EdgeInsets.all(AppSizeW.s16),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageAssets.card), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(AppSizeR.s8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStrings().yourBalance,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.secondary),
                      ),
                      Text(
                        model.amount.toString(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: AppSizeSp.s22,
                            ),
                      ),
                    ],
                  ),
                  Text(
                    model.type,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.secondary),
                  ),
                ],
              ),
              SizedBox(height: AppSizeH.s24),
              Text(
                model.cardNumber,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: ColorManager.white),
              ),
            ],
          )),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings().cardHolder,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.secondary),
                    ),
                    Text(
                      model.beneficiaryName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings().expiredDate,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.secondary),
                    ),
                    Text(
                      model.expiry_At,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white),
                    ),
                  ],
                ),
              ),
              // const Expanded(child: SizedBox()
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings().status,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.secondary),
                  ),
                  Text(
                    model.status,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold, color: ColorManager.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
