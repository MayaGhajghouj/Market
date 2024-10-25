import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/snackbar.dart';

import '../../../models/user_model.dart';

class GoogleLoginSignupControlle {
  Future<void> signUpSignInWithGoogle({
    required context,
  }) async {
    try {
// Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // if user canceled the sign-in
      if (googleUser == null) {
        return;
      }
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // Sign in to Firebase with Google credentials
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      String uId = userCredential.user!.uid;
      // Check if the user is new by checking Firestore
      DocumentSnapshot userDoc =
          await FirebaseFirestore.instance.collection('users').doc(uId).get();
      if (!userDoc.exists) {
        // User is new
      //  Get.toNamed(Routes.GoogleSignupAdditionalInfo(googleUser));

        // Create the user model and save to Firestore
        // UserModel newUser = UserModel(
        //   id: uId,
        //   displayName: googleUser.displayName ?? 'user',
        //   email: googleUser.email,
        //   phone: mobileNumber,
        //   birthday: dateOfBirth,
        //   photoUrl: googleUser.photoUrl,
        //   password: '',
        // );

        // await FirebaseFirestore.instance.collection('users').doc(uId).set(newUser.toMap());

        // Navigate to additional information screen if required
      } else {
        // User already exists, navigate to the home screen
        Get.toNamed(Routes.WelcomeBackPage);
      }
    } catch (e) {
      print('error in signin with google');
      AppSnackBar(context: context, msg: 'error in signin with google');
    }
  }

  //  if the user is new and he signup with email .. he will enter additional information

  void saveUserToFirestore(
      GoogleSignInAccount googleUser, String phone, String birthday) async {
    UserModel user = UserModel(
      id: googleUser.id, // Use Google ID as the document ID
      displayName: googleUser.displayName ?? 'No Name',
      email: googleUser.email,
      phone: phone,
      birthday: birthday,
      photoUrl: googleUser.photoUrl,
      password: '',
    );

    // Save user details to Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.id)
        .set(user.toMap());
  }
}
