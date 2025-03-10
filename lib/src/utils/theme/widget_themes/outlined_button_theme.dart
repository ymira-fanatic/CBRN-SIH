import 'package:flutter/material.dart';
import 'package:progresssystem_splashscreen/src/constants/sizes.dart';
import 'package:progresssystem_splashscreen/src/constants/colors.dart';
/*--Light & Dark Elevated Buttons--*/
class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  /*--Light Theme--*/
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        side: BorderSide(color: tSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      ),
  );


      /*--Dark Theme--*/
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}