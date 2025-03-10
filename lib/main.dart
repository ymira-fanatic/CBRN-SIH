import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progresssystem_splashscreen/firebase_options.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/controllers/auth_controller.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/controllers/firebase_controller.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/test/test_screen.dart';
import 'package:progresssystem_splashscreen/src/utils/theme/theme.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(App());
}

class App extends StatelessWidget {

  App({super.key});

  final AuthController authController = Get.put(AuthController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }
}
