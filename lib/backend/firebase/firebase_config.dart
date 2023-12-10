import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBKxIw5z8QO0LIssBQfS4CyzCqdK2j4T_Q",
            authDomain: "controleestoque-22f57.firebaseapp.com",
            projectId: "controleestoque-22f57",
            storageBucket: "controleestoque-22f57.appspot.com",
            messagingSenderId: "98135079316",
            appId: "1:98135079316:web:487e3a6a285f3bfe69b781"));
  } else {
    await Firebase.initializeApp();
  }
}
