import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import '../../backend/schema/chat_record.dart';

class FirestoreUtils {
  static bool hasPendingWrites(ChatRecord chat) {
    bool isDone = false;
    DocumentReference ref = chat.reference;
    DocumentSnapshot? doc;
    ref
        .get(const GetOptions(source: Source.cache))
        .then((s) => doc = s)
        .whenComplete(() => isDone = true);
    void sayGoodbyeToTheEventLoop() {
      if (isDone) return;
      scheduleMicrotask(sayGoodbyeToTheEventLoop);
    }

    sayGoodbyeToTheEventLoop();

    return doc!.metadata.hasPendingWrites;
  }
}
