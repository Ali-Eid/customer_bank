import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';

void showMyBottomSheet(BuildContext context, Widget child) {
  showModalBottomSheet(
    context: context,
    backgroundColor: ColorManager.white,
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(AppSizeR.s8),
            topEnd: Radius.circular(AppSizeR.s8))),
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: child,
    ),
  );
}
