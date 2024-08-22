import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';

void showToast({
  required BuildContext context,
  required String message,
  Color? color,
  ToastGravity? gravity,
  Toast? toastLength,
  Duration duration = const Duration(seconds: 3),
}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength ?? Toast.LENGTH_SHORT,
      gravity: gravity ?? ToastGravity.BOTTOM,
      backgroundColor: color ?? ColorManager.emerald,
      textColor: Colors.white,
      fontSize: AppSizeSp.s16);
}
