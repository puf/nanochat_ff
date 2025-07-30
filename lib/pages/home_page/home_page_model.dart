import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/chat_message_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ChatMessage dynamic component.
  late FlutterFlowDynamicModels<ChatMessageModel> chatMessageModels;
  bool isDataUploading_uploadData1kb = false;
  FFUploadedFile uploadedLocalFile_uploadData1kb =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData1kb = '';

  bool isDataUploading_uploadData7h8 = false;
  FFUploadedFile uploadedLocalFile_uploadData7h8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileToImgur] action in btnImageUpload2 widget.
  String? imgurResult;
  // State field(s) for txtMessage widget.
  FocusNode? txtMessageFocusNode;
  TextEditingController? txtMessageTextController;
  String? Function(BuildContext, String?)? txtMessageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    chatMessageModels = FlutterFlowDynamicModels(() => ChatMessageModel());
  }

  @override
  void dispose() {
    chatMessageModels.dispose();
    txtMessageFocusNode?.dispose();
    txtMessageTextController?.dispose();
  }
}
