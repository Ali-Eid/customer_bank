import 'dart:ui';

class ColorManager {
  //Base
  static Color white = Hex16Color.fromHex("#FFFFFF");
  static Color black = Hex16Color.fromHex("#000000");

  //System
  static Color primary = Hex16Color.fromHex("#665BEC");
  static Color persimmon = Hex16Color.fromHex("#FF5656");
  static Color emerald = Hex16Color.fromHex("#4DCA52");
  static Color azure = Hex16Color.fromHex("#008FF6");
  static Color cornflowerBlue = Hex16Color.fromHex("#786CFF");
  static Color orange = Hex16Color.fromHex("#FF7324");

  //Grey
  static Color grey1 = Hex16Color.fromHex("#8E8E93");
  static Color grey2 = Hex16Color.fromHex("#AEAEB2");
  static Color grey3 = Hex16Color.fromHex("#C7C7CC");
  static Color grey4 = Hex16Color.fromHex("#D1D1D6");
  static Color grey5 = Hex16Color.fromHex("#E5E5EA");
  static Color grey6 = Hex16Color.fromHex("#F2F2F7");

  //system background
  static Color background = Hex16Color.fromHex("#FCFCFC");
  //separators
  static Color opaque = Hex16Color.fromHex("#C6C6C8");
  static Color nonOpaque = Hex16Color.fromHex("#EFEFEF");

  // labels
  static Color labelPrimary = Hex16Color.fromHex("#000000");
  static Color labelSecondary = Hex16Color.fromHex("#8A8A8E");
  static Color labelTertiary = Hex16Color.fromHex("#C5C5C7");
  static Color labelQuarternary = Hex16Color.fromHex("#F8F8F8");

  //Fills
  static Color fillPrimary = Hex16Color.fromHex("#E4E4E6");
  static Color fillSecondary = Hex16Color.fromHex("#E9E9EB");
  static Color fillTertiary = Hex16Color.fromHex("#EFEFF0");
  static Color fillQuarternary = Hex16Color.fromHex("#F4F4F5");
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
