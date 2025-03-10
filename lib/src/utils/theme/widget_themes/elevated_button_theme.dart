import  'package:flutter/material.dart';
import 'package:progresssystem_splashscreen/src/constants/sizes.dart';
import 'package:progresssystem_splashscreen/src/constants/colors.dart';
/*--Light & Dark Elevated Buttons--*/
class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  /*--Light Theme--*/
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  /*--Dark Theme--*/
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}