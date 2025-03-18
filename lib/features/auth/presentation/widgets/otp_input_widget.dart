import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:pinput/pinput.dart';

import '../blocs/input_otp_cubit/input_otp_cubit.dart';

class OtpInputWidget extends StatelessWidget {
  final Function(String) onSubmit;
  final InputOtpCubit inputOtpCubit;
  const OtpInputWidget({
    super.key,
    required this.onSubmit,
    required this.inputOtpCubit,
  });

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: AppSizeW.s48,
      height: AppSizeW.s48,
      textStyle: Theme.of(context).textTheme.headlineSmall,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizeR.s8),
        border: Border.all(
          color: Colors.grey.shade400,
          width: AppSizeW.s1,
        ),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizeR.s8),
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: AppSizeW.s1_4,
        ),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizeR.s8),
        border: Border.all(
          color: ColorManager.primary,
          width: AppSizeW.s1_4,
        ),
      ),
    );

    return Pinput(
      length: 6,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      autofillHints: const [AutofillHints.oneTimeCode],
      onCompleted: (text) => onSubmit(text),
      onChanged: (value) {
        inputOtpCubit.setOtpCode(value);
      },
    );
  }
}
