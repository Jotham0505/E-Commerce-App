import 'package:ecommerce/utilities/theme/custom%20themes/appbar_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/checkbox_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/chip_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/elevated_button_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/outline_button_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/text_field_theme.dart';
import 'package:ecommerce/utilities/theme/custom%20themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButton,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TbottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TlightCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutLinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButton,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TbottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TlightCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutLinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}