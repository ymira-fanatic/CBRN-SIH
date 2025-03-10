import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/welcome/welcome_screen.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  Rxn<User> currentUser = Rxn<User>();

  Future<void> signInWithEmailAndPassword(String emailAddress, String password) async {
    try {
      isLoading.value = true;
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      currentUser.value = credential.user;

      // Navigate to the home screen after successful sign-in
      Get.to(Dashboard());

    } on FirebaseAuthException catch (e) {
      // Handle authentication errors
      if (e.code == 'user-not-found') {
        Get.snackbar('Error', 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Error', 'Wrong password provided for that user.');
      } else {
        Get.snackbar('Error', 'An unexpected error occurred.');
      }
    } finally {
      isLoading.value = false;
    }
  }
}
