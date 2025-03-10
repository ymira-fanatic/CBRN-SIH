import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/sizes.dart';
//import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/login/login_screen.dart';

import '../../controllers/auth_controller.dart';


class YourLoginScreen extends StatefulWidget {
  @override
  State<YourLoginScreen> createState() => _YourLoginScreenState();
}

class _YourLoginScreenState extends State<YourLoginScreen> {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return authController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : LoginForm();
      }),
    );
  }
}

class LoginForm extends StatefulWidget {


  LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final AuthController authController = Get.find();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          padding:
          const EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                enabled: true,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: tFormHeight - 20),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text:tForgetPassword, style: Theme.of(context).textTheme.bodyText1),
                          ]
                        ),
                      ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        authController.signInWithEmailAndPassword(emailController.text, passwordController.text);
                      },
                      child: const Text(tLogin),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),);
  }
}
