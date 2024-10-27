import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';

import '../../../core/manage_app_state/app_state_controller.dart';
import '../../../models/user_model.dart';

class GoogleLoginSignupControlle extends GetxController {
  //  if user is new in app and he signup with google i will store his data here
  final Rx<GoogleSignInAccount?> myGoogleUser = Rx<GoogleSignInAccount?>(null);
  final AppStateController appStateController = Get.find();

  Future<void> signUpSignInWithGoogle({
    required context,
  }) async {
    try {
      appStateController.startLoading();
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
        Get.toNamed(Routes.GoogleSignupAdditionalInfo);
        appStateController.setSuccess();
        // take his ingo from gooogle account
        myGoogleUser.value = googleUser;
      } else {
        // User already exists, navigate to the home screen
        Get.toNamed(Routes.WelcomeBackPage);
        appStateController.setSuccess();
      }
    } catch (e) {
      print('\n\nerror in auth with google \n $e\n');
      appStateController.setError('error in auth with google');
    }
  }

  //  if the user is new and he signup with email .. he will enter additional information

  void saveUserToFirestore(String phone, String birthday) async {
    if (myGoogleUser.value != null) {
      UserModel user = UserModel(
        id: myGoogleUser.value!.id, // Use Google ID as the document ID
        displayName: myGoogleUser.value!.displayName ?? 'No Name',
        email: myGoogleUser.value!.email,
        phone: phone,
        birthday: birthday,
        photoUrl: myGoogleUser.value!.photoUrl,
        password: '',
      );

      // Save user details to Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.id)
          .set(user.toMap());
    }
  }
}// lastt things have to do : 


/**
 * process the addditional info by send google user and all info to fire store
 * i want to manage the state of app 
 * i want to test the errors and complete catcch error 
 * 
 */
