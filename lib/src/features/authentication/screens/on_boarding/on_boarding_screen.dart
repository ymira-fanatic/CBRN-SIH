import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:progresssystem_splashscreen/src/constants/colors.dart';
import 'package:progresssystem_splashscreen/src/constants/image_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/sizes.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages:[
                Container(color: tOnBoardingPage1Color),
                Container(color: tOnBoardingPage2Color),
                Container(color: tOnBoardingPage3Color),
              ],
          ),
        ],
      ),
    );
  }

}