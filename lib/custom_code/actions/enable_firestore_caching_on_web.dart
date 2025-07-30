// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart' show kIsWeb;

Future enableFirestoreCachingOnWeb() async {
  final db = FirebaseFirestore.instance;
  if (kIsWeb) {
    // Local caching/persistence is enabled by default on all non-web clients
    try {
      await db
          .enablePersistence(const PersistenceSettings(synchronizeTabs: true));
    } catch (e) {
      print('Error enabling Firestore cache: $e');
    }
  }
  print('Firestore cache enabled. Settings: ${db.settings}');
}
