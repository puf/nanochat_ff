// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class HasPendingWritesWidget extends StatefulWidget {
  const HasPendingWritesWidget({
    super.key,
    this.width,
    this.height,
    required this.doc,
    this.yesWidgetBuilder,
    this.noWidgetBuilder,
  });

  final double? width;
  final double? height;
  final DocumentReference doc;
  final Widget Function()? yesWidgetBuilder;
  final Widget Function()? noWidgetBuilder;

  @override
  State<HasPendingWritesWidget> createState() => _HasPendingWritesWidgetState();
}

class _HasPendingWritesWidgetState extends State<HasPendingWritesWidget> {
  bool hasPendingWrites = false;
  StreamSubscription? subscription;

  _HasPendingWritesWidgetState();

  @override
  void initState() {
    super.initState();
    subscription = widget.doc.snapshots(source: ListenSource.cache).listen((s) {
      setState(() {
        hasPendingWrites = s.metadata.hasPendingWrites;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return hasPendingWrites
        ? widget.yesWidgetBuilder!()
        : widget.noWidgetBuilder!();
  }
}
