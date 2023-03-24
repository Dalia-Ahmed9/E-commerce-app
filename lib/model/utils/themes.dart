import 'package:flutter/material.dart';
import 'package:new_e_commerce/model/utils/Colors.dart';

ThemeData themes() {
  return ThemeData(
      appBarTheme:
          AppBarTheme(backgroundColor: AppColors.whiteColor, elevation: 0),
      scaffoldBackgroundColor: AppColors.whiteColor);
}
