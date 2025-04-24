import 'package:app_tahhu/utils/theme/custom_theme/appbar_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/button_sheet_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/check_box_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/chip_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:app_tahhu/utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_tahhu/utils/theme/custom_theme/text_thame.dart';



class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBar,
      checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightButtomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: ToutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
      );
}
