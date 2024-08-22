import 'package:flutter/material.dart';
import 'package:fs_bank/core/constants/values_manager.dart';

import 'color_manager.dart';

class FontConstants {
  static const String fontFamilyInter = "Inter";
  static const String fontFamilyPTSans = "PTSans";
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: ColorManager.primary,
    useMaterial3: true,
    // fontFamily: FontConstants.fontFamilyPTSans,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizeR.s8)),
          ),
          iconColor: WidgetStateProperty.all(ColorManager.white),
          iconSize: WidgetStateProperty.all(AppSizeSp.s20),
          alignment: Alignment.center,
          elevation: WidgetStateProperty.all(AppSizeH.s16),
          foregroundColor: WidgetStateProperty.all<Color>(ColorManager.white),
          backgroundColor: WidgetStateProperty.all<Color>(ColorManager.primary),
          padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: AppSizeH.s13)),
          shadowColor:
              WidgetStateProperty.all(ColorManager.black.withOpacity(0.1)),
          textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
              fontFamily: FontConstants.fontFamilyPTSans,
              fontWeight: FontWeight.bold,
              fontSize: AppSizeSp.s16))),
    ),
    inputDecorationTheme: InputDecorationTheme(
        // contentPadding:
        //     EdgeInsets.symmetric(vertical: 0, horizontal: AppSizeW.s8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.nonOpaque,
            // width: AppSizeW.s1,
            strokeAlign: AppSizeW.s1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.primary,
            // width: AppSizeW.s1,
            strokeAlign: AppSizeW.s1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.persimmon,
            // width: AppSizeW.s1,
            strokeAlign: AppSizeW.s1,
          ),
        ),
        labelStyle: TextStyle(
            fontFamily: FontConstants.fontFamilyPTSans,
            fontSize: AppSizeSp.s12,
            color: ColorManager.labelTertiary),
        helperStyle: TextStyle(
            fontFamily: FontConstants.fontFamilyPTSans,
            fontSize: AppSizeSp.s12,
            color: ColorManager.labelTertiary),
        errorStyle: TextStyle(
            fontFamily: FontConstants.fontFamilyPTSans,
            fontSize: AppSizeSp.s12,
            color: ColorManager.persimmon),
        hintStyle: TextStyle(
            fontFamily: FontConstants.fontFamilyPTSans,
            fontSize: AppSizeSp.s12,
            color: ColorManager.labelTertiary),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
          borderSide: BorderSide(
            color: ColorManager.nonOpaque,
            // width: AppSizeW.s1,
            strokeAlign: AppSizeW.s1,
          ),
        ),
        filled: true,
        fillColor: ColorManager.white),
    textTheme: TextTheme(
      labelLarge: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.bold,
          color: ColorManager.black,
          fontSize: AppSizeSp.s36),
      labelMedium: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.bold,
          color: ColorManager.black,
          fontSize: AppSizeSp.s24),
      bodyLarge: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.bold,
          color: ColorManager.white,
          fontSize: AppSizeSp.s24),
      labelSmall: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      headlineMedium: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          color: ColorManager.primary,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s14),
      bodyMedium: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          color: ColorManager.black,
          fontSize: AppSizeSp.s17),
      headlineSmall: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      displayMedium: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.labelTertiary,
          fontSize: AppSizeSp.s16),
      titleMedium: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.labelTertiary,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s16),
      titleSmall: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.labelSecondary,
          fontSize: AppSizeSp.s12),
      titleLarge: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.black,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s14),
      displayLarge: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.labelTertiary,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s14),
      bodySmall: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.labelTertiary,
          fontSize: AppSizeSp.s10),
      displaySmall: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.labelQuarternary,
          fontSize: AppSizeSp.s12),
      headlineLarge: TextStyle(
          fontFamily: FontConstants.fontFamilyPTSans,
          color: ColorManager.black,
          fontSize: AppSizeSp.s12),
    ),
    datePickerTheme: DatePickerThemeData(
      cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(ColorManager.persimmon),
          textStyle: WidgetStateProperty.all(TextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeight.w600,
              fontSize: AppSizeSp.s16))),
      confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(ColorManager.primary),
          textStyle: WidgetStateProperty.all(TextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeight.w600,
              fontSize: AppSizeSp.s16))),
      headerHelpStyle: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.bold,
          fontSize: AppSizeSp.s24),
      headerHeadlineStyle: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.bold,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      yearStyle: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      dayStyle: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      weekdayStyle: TextStyle(
          fontFamily: FontConstants.fontFamilyInter,
          fontWeight: FontWeight.w600,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16),
      backgroundColor: ColorManager.background,
      headerBackgroundColor: ColorManager.primary,
      headerForegroundColor: ColorManager.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s8)),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}

enum ThemeDataType { light, dark }

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}
