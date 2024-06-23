import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAJ5NhmEsw3lKasMRQxyEzAlA8NkEjh0zo",
            authDomain: "get-a-lift-46790.firebaseapp.com",
            projectId: "get-a-lift-46790",
            storageBucket: "get-a-lift-46790.appspot.com",
            messagingSenderId: "445985023314",
            appId: "1:445985023314:web:704a5fd504872b74bb868b",
            measurementId: "G-8XDFLTXJQB"));
  } else {
    await Firebase.initializeApp();
  }
}
