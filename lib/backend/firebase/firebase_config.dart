import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-drCNnunb1wjVrY6olynfhKMEwF5opqs",
            authDomain: "course-assign.firebaseapp.com",
            projectId: "course-assign",
            storageBucket: "course-assign.appspot.com",
            messagingSenderId: "781417977778",
            appId: "1:781417977778:web:f6630535eb037192def6ab",
            measurementId: "G-QGNTT5X7BC"));
  } else {
    await Firebase.initializeApp();
  }
}
