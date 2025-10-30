import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJWkLF_wTHXEd3IiXNosH31BJaWNDM0RY",
            authDomain: "totp-ia.firebaseapp.com",
            projectId: "totp-ia",
            storageBucket: "totp-ia.firebasestorage.app",
            messagingSenderId: "793588456163",
            appId: "1:793588456163:web:8a2c873c7270eb049283d6"));
  } else {
    await Firebase.initializeApp();
  }
}
