import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';

void showMyBottomSheet(BuildContext context, Widget child,
    {bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = true}) {
  showModalBottomSheet(
    context: context,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    backgroundColor: ColorManager.white,
    sheetAnimationStyle: AnimationStyle(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 300),
    ),
    useSafeArea: useSafeArea,
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
