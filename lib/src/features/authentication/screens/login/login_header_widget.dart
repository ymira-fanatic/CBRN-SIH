import 'package:flutter/material.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:progresssystem_splashscreen/src/constants/image_strings.dart';
class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tWelcomeScreenImage), height: size.height*0.2,
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.headline1),
      ],
    );
  }
}
