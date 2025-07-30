// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> uploadFileToImgbb(FFUploadedFile? uploadedFile) async {
  // Add your function code here!
  if (uploadedFile == null) {
    return '';
  }

  try {
    // Convert image bytes to base64
    final base64Image = base64Encode(uploadedFile.bytes!);

    // Your ImgBB API key - you should store this securely
    const apiKey = 'f8d6939e55331b1ef46569df16ced4fc';

    // Create multipart request
    final response = await http.post(
      Uri.parse('https://api.imgbb.com/1/upload'),
      body: {
        'key': apiKey,
        'image': base64Image,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse['data']['url'] ?? '';
    } else {
      print('Failed to upload image. Status code: ${response.statusCode}');
      return '';
    }
  } catch (e) {
    print('Error uploading file: $e');
    return '';
  }
}
