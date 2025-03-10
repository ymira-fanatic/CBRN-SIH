import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/auth_controller.dart';
import '../../controllers/firebase_controller.dart';
import '../test/test_screen.dart';

class ChemicalTraining extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();
  final FirebaseController firebaseController = Get.put(FirebaseController());

  final List<String> containerTitles = ['Container 1', 'Container 2', 'Container 3'];

  @override
  Widget build(BuildContext context) {
    var userEmail = authController.currentUser.value?.email;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemical Training'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Adjust the padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector( onTap: () async {
              await firebaseController.getGradePoint(userEmail, 'Chemical');
              Get.to(TestScreen());
    },

                child: buildContainer("Basic Training ", Colors.blue, Colors.green)),
            SizedBox(height: 16.0), // Add spacing between containers
            buildContainer("Intermediate Training", Colors.orange, Colors.pink),
            SizedBox(height: 16.0), // Add spacing between containers
            buildContainer("Advanced Training", Colors.purple, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String heading, Color startColor, Color endColor) {

    return GestureDetector(
      child: Container(
        height: 100, // Adjust the height as needed
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [startColor, endColor],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            heading,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
