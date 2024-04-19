import 'package:flutter/material.dart';

class TbottomSheetTheme {
  TbottomSheetTheme._();

  static final lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity,),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(16))
  );

  static final darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minWidth: double.infinity,),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(16))
  );
}