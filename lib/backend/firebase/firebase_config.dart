import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBIkFiXLip-eG63wLQwa2r3R_84F3NSmbY",
            authDomain: "nesromart-app.firebaseapp.com",
            projectId: "nesromart-app",
            storageBucket: "nesromart-app.appspot.com",
            messagingSenderId: "916390148126",
            appId: "1:916390148126:web:61daed5af4dbd2373a160f",
            measurementId: "G-2NN92B55DM"));
  } else {
    await Firebase.initializeApp();
  }
}
