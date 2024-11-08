import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class Storage 
{
  final FirebaseStorage _storage = FirebaseStorage.instance;

  /// this function to upload a file to firestore storage and retrieve the pathurl
  Future<String?> uploadFile(String filePath) async 
  {
    File file = File(filePath);
    try {
      // Define a unique file name for the upload
      String fileName = 'uploads/${DateTime.now().millisecondsSinceEpoch}.png';

      // Upload the file to Firebase Storage
      TaskSnapshot snapshot = await _storage.ref(fileName).putFile(file);

      // get the downlload Url
      String downloadUrl = await snapshot.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      print('\nerror in the upload file  functin: \n $e \n');
    }
    return null;
  }


}
