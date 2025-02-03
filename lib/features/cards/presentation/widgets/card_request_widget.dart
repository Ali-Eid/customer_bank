import 'package:flutter/material.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';

class CardRequestWidget extends StatelessWidget {
  // final String imagePath;
  final IconData? icon;
  final String title;
  final bool? moreSpacing;
  final void Function()? onTap;
  const CardRequestWidget({
    super.key,
    // required this.imagePath,
    required this.title,
    this.onTap,
    this.moreSpacing,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: AppSizeW.s6, horizontal: AppSizeW.s16),
          decoration: BoxDecoration(
              color: ColorManager.grey5,
              borderRadius: BorderRadius.circular(AppSizeR.s8)),
          child: Column(
            children: [
              moreSpacing ?? false
                  ? SizedBox(height: AppSizeH.s10)
                  : const SizedBox(),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(AppSizeW.s8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: ColorManager.primary, width: AppSizeW.s2)),
                child: Icon(
                  icon,
                  size: AppSizeSp.s30,
                  color: ColorManager.primary,
                ),
              )
                  // Image(
                  //   image: AssetImage(imagePath),
                  // ),
                  ),
              SizedBox(height: AppSizeH.s6),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ColorManager.secondary),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
    );
  }
}
