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

Future<String> uploadFileToImgur(FFUploadedFile? uploadedFile) async {
  // Add your function code here!
  if (uploadedFile == null) {
    return '';
  }

/* Message from Imgur
Great! Now you can get started with the API!

For public read-only and anonymous resources, such as getting image info, looking up user
comments, etc. all you need to do is send an authorization header with your client_id in your
requests. This also works if you'd like to upload images anonymously (without the image being tied
to an account), or if you'd like to create an anonymous album. This lets us know which application is
accessing the API.

Authorization: Client-ID YOUR_CLIENT_ID

Client ID:
fa0d6f7fc324b0e

Client secret:
866174ac0ba9f95d2b11f980e4f3e53ba3e0ab10
*/

  try {
    // Convert image bytes to base64
    final file = http.MultipartFile.fromBytes("image", uploadedFile.bytes!);

    // Your imgur client ID
    const clientID = 'fa0d6f7fc324b0e';

    var request = http.MultipartRequest(
        "POST", Uri.parse("https://api.imgur.com/3/upload"));
    request.headers["Authorization"] = "Client-ID $clientID";
    request.files.add(file);
    var response = await request.send();

    if (response.statusCode == 200) {
      var result = await http.Response.fromStream(response)
          .then((value) => json.decode(value.body));
      // https://i.imgur.com/[id].jpeg
      var id = result["data"]["id"];
      return 'https://i.imgur.com/$id.jpeg'; // TODO: don't hard-code type
    } else {
      print('Failed to upload image. Status code: ${response.statusCode}');
      return '';
    }
  } catch (e) {
    print('Error uploading file: $e');
    return '';
  }
}
