import 'package:get/get.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxString gradePoint = ''.obs;

  Future<void> getGradePoint(userEmail, String industry/**, String trainingName**/) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
      await _firestore.collection('Users').doc(userEmail).collection(industry).doc('firstTraining').get();

      if (snapshot.exists) {
        final Map<String, dynamic> data = snapshot.data()!;
        gradePoint.value = data['Grade Point'] ?? '';
      } else {
        // Handle case when document does not exist
        print('Document does not exist');
      }
    } catch (e) {
      // Handle any errors that occurred during the fetch
      print('Error fetching document: $e');
    }
  }
}
