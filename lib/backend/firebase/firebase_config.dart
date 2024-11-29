import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBtJ_kmpoZogBcJL_7Mz5vGy7gKOcy5rp8",
            authDomain: "cupcake-mf-7e291.firebaseapp.com",
            projectId: "cupcake-mf-7e291",
            storageBucket: "cupcake-mf-7e291.firebasestorage.app",
            messagingSenderId: "282532679909",
            appId: "1:282532679909:web:805cfe31465f45777a040c"));
  } else {
    await Firebase.initializeApp();
  }
}
