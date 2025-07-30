import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isFirestoreNetworkEnabled = true;
  bool get isFirestoreNetworkEnabled => _isFirestoreNetworkEnabled;
  set isFirestoreNetworkEnabled(bool value) {
    _isFirestoreNetworkEnabled = value;
  }

  DocumentReference? _me =
      FirebaseFirestore.instance.doc('/users/VXu6EvFMl5M8KMXriYRvFEWTFHA2');
  DocumentReference? get me => _me;
  set me(DocumentReference? value) {
    _me = value;
  }

  List<String> _allowedMessages = [
    'Now online',
    'Hello World',
    'Hello',
    'New message'
  ];
  List<String> get allowedMessages => _allowedMessages;
  set allowedMessages(List<String> value) {
    _allowedMessages = value;
  }

  void addToAllowedMessages(String value) {
    allowedMessages.add(value);
  }

  void removeFromAllowedMessages(String value) {
    allowedMessages.remove(value);
  }

  void removeAtIndexFromAllowedMessages(int index) {
    allowedMessages.removeAt(index);
  }

  void updateAllowedMessagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allowedMessages[index] = updateFn(_allowedMessages[index]);
  }

  void insertAtIndexInAllowedMessages(int index, String value) {
    allowedMessages.insert(index, value);
  }

  List<String> _allowedUids = ['rt1iYXNbHlQgfM3gkkwlZJRRpD93', 'test'];
  List<String> get allowedUids => _allowedUids;
  set allowedUids(List<String> value) {
    _allowedUids = value;
  }

  void addToAllowedUids(String value) {
    allowedUids.add(value);
  }

  void removeFromAllowedUids(String value) {
    allowedUids.remove(value);
  }

  void removeAtIndexFromAllowedUids(int index) {
    allowedUids.removeAt(index);
  }

  void updateAllowedUidsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allowedUids[index] = updateFn(_allowedUids[index]);
  }

  void insertAtIndexInAllowedUids(int index, String value) {
    allowedUids.insert(index, value);
  }
}
