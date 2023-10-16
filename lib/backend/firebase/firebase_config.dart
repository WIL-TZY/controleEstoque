import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYLesvO8DGtji6tEryqSsMw3QJNxXK7PU",
            authDomain: "controleestoque-78069.firebaseapp.com",
            projectId: "controleestoque-78069",
            storageBucket: "controleestoque-78069.appspot.com",
            messagingSenderId: "702279701742",
            appId: "1:702279701742:web:76f4b8df69f9b041a40fff"));
  } else {
    await Firebase.initializeApp();
  }
}
