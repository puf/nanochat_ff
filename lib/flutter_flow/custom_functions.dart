import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool hasPendingWrites(DocumentReference firestoreDoc) {
  return true; // just to make it compile for now
  /*
  bool isDone = false;
  DocumentSnapshot? doc;
  firestoreDoc
      .get(const GetOptions(source: Source.cache))
      .whenComplete(() => isDone = true)
      .then((s) => doc = s);
  void sayGoodbyeToTheEventLoop() {
    if (isDone) return;
    scheduleMicrotask(sayGoodbyeToTheEventLoop);
  }

  sayGoodbyeToTheEventLoop();

  return doc!.metadata.hasPendingWrites;
  */
}

String returnImageUrl(String url) {
  return url;
}

String? imagePathToString(String? imagePath) {
  return imagePath?.toString();
}

DocumentReference? getUserDocumentReference(String uid) {
  return FirebaseFirestore.instance.collection("users").doc(uid);
}
