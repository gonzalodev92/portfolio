import 'dart:ui';

class AppColors {
  static final Color primaryColor = hexToColor('ff8f00');
  static final Color primaryTextColor = hexToColor('494949');
  static final Color secondaryTextColor = hexToColor('4F4F4F');
  static final Color grayLightTextColor = hexToColor('575757');
  static final Color grayBorder = hexToColor('dadada');

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
