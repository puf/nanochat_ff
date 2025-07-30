import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  Local state fields for this page.

  List<String> messages = ['Initializing app, gimme a moment...'];
  void addToMessages(String item) => messages.add(item);
  void removeFromMessages(String item) => messages.remove(item);
  void removeAtIndexFromMessages(int index) => messages.removeAt(index);
  void insertAtIndexInMessages(int index, String item) =>
      messages.insert(index, item);
  void updateMessagesAtIndex(int index, Function(String) updateFn) =>
      messages[index] = updateFn(messages[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
