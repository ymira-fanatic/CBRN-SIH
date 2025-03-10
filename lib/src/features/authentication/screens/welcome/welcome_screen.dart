import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/login/login_screen.dart';
import 'package:progresssystem_splashscreen/src/constants/image_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/sizes.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/colors.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        body: Container(
          padding:EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(tWelcomeScreenImage),
                  alignment: Alignment.center,
                  height:height*0.6),
              Column(
                children: [
                  Text(tWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3,),
                  Text(tWelcomeSubTitle,
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => LoginScreen()),

                      child: Text(tLogin,),
                    ),
                  ),
                  /** const SizedBox(width: 10.0,),
                      Expanded(
                      child: ElevatedButton(
                      onPressed: (){},

                      child: Text(tSignUp)
                      ),
                      ),**/
                ],
              )
            ],
          ),
        )
    );
  }
}
