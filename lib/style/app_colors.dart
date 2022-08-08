import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0XFF07142f);
  static const Color primaryColorLight = Color(0XFF282b51);
  static const Color accentColor = Color(0XFF871df1);
  static const Color accentColorLight = Color(0XFF3b326a);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color lightBackGroundColor = Color(0xFF44188b);
  static const Color unSelectedIconColor = Color(0xFF838fa8);
  static const Color redAccent = Color(0XFFd90a0a);
  static const List<Color> homeGradiente = [
    AppColors.lightBackGroundColor,
    AppColors.primaryColorLight,
    AppColors.primaryColor,
    AppColors.primaryColor,
    AppColors.primaryColor,
    AppColors.primaryColorLight,
    AppColors.lightBackGroundColor,
  ];
  static const List<Color> bottonNavigationBarGradient = [
    AppColors.primaryColorLight,
    AppColors.accentColorLight,
  ];
}
