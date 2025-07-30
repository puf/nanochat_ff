import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBABABPpz89K3p_tdJ6jL9n2OBgu8NMTFk",
            authDomain: "nanochat-20241022-mw8qu9.firebaseapp.com",
            projectId: "nanochat-20241022-mw8qu9",
            storageBucket: "nanochat-20241022-mw8qu9.appspot.com",
            messagingSenderId: "942941060459",
            appId: "1:942941060459:web:f191c92701aab29d2a202e"));
  } else {
    await Firebase.initializeApp();
  }
}
