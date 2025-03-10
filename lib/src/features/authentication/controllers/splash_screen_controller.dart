import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:progresssystem_splashscreen/src/utils/theme/theme.dart';

class SplashScreenController extends GetXState{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const WelcomeScreen());
  }
}