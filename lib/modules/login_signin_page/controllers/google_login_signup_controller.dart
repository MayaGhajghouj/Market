import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import '../../../core/manage_app_state/app_state_controller.dart';
import '../../../models/user_model.dart';

class GoogleLoginSignupControlle extends GetxController {
  //  if user is new in app and he signup with google i will store his data here
  Rx<GoogleSignInAccount?> myGoogleUser = Rx<GoogleSignInAccount?>(null);
  final AppStateController appStateController = Get.find();

  Future<void> signUpSignInWithGoogle({
    required context,
  }) async {
    try {
      appStateController.startLoading();

      //final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      myGoogleUser.value = await GoogleSignIn().signIn();

      // print(
      //     "\n===============Assigned myGoogleUser:=======================\n $googleUser\n\n");
      // // if user canceled the sign-in
      if (myGoogleUser.value == null) {
        appStateController.setError('Google sign-in canceled.');
      }
      //  myGoogleUser.value = googleUser;
      print(
          "\n===============Assigned myGoogleUser:=======================\n ${myGoogleUser.value}\n\n");
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await myGoogleUser.value!.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with Google credentials
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // String uId = userCredential.user!.uid;
      String uId = myGoogleUser.value!.id;

      // Check if the user is new by checking Firestore
      await FirebaseFirestore.instance
          .collection('usersData')
          .doc(uId)
          .get()
          .then((Value) 
          {
        if (!Value.exists) {
          // User is new
          Get.toNamed(Routes.GoogleSignupAdditionalInfo);
          appStateController.setSuccess();
          // take his ingo from gooogle account
        } else {
          // User already exists, navigate to the home screen
          Get.toNamed(Routes.WelcomeBackPage);
          appStateController.setSuccess();
        }
      });
    } catch (e) {
      print('\n\nerror in authID with google \n $e\n');
      appStateController.setError('error in auth with google');
    }
  }
//====================================================================================================
  //  if the user is new and he signup with email .. he will enter additional information

  Future<void> saveUserToFirestore(String phone, String birthday) async {
    appStateController.startLoading();
    if (myGoogleUser.value != null) {
      UserModel user = UserModel(
        // id: myGoogleUser.value!.id, // Use Google ID as the document ID
        id: myGoogleUser.value!.id,
        displayName: myGoogleUser.value!.displayName ?? 'No Name',
        email: myGoogleUser.value!.email,
        phone: phone,
        birthday: birthday,
        photoUrl: myGoogleUser.value!.photoUrl,
        password: '',
      );
      // Save user details to Firestore
      await FirebaseFirestore.instance
          .collection('usersData')
          .doc(user.id)
          .set(user.toMap())
          .then((_) {
        appStateController.setSuccess();
      }).catchError((e) {
        appStateController.setError('error in save user data to firestore');
      });
    } else {
      appStateController.setError('\n\nnull user \n\n');
    }
  }
}// lastt things have to do : 


/**
 * process the addditional info by send google user and all info to fire store
 * i want to manage the state of app 
 * i want to test the errors and complete catcch error 
 * 
 */
