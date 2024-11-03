import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import '../../../core/manage_app_state/app_state_controller.dart';
import '../../../models/user_model.dart';

class Google_facebook_LoginSignupControlle extends GetxController {
  //  if user is new in app and he signup with google i will store his data here
  final AppStateController appStateController = Get.find();
  Rx<UserModel?> userModel = Rx(null);

  /// this function is the logic of goole auth
  Future<void> signUpSignInWithGoogle(
      //  required context,
      ) async {
    try {
      appStateController.startLoading();

      //final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final myGoogleUser = await GoogleSignIn().signIn();

      if (myGoogleUser == null) {
        appStateController.setError('Google sign-in canceled.');
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await myGoogleUser!.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with Google credentials
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      /// Check if the user is new by checking Firestore

      CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('usersData');

      // Query to check if a user with the given UID exists
      await usersCollection
          .where('id', isEqualTo: userCredential.user!.uid)
          .get()
          .then((Value) {
        if (Value.docs.isEmpty) {
          // User is new
          print(Value.toString());
          print('====================value================================');
          userModel.value = UserModel(
              id: userCredential.user!.uid,
              displayName: userCredential.user!.displayName ?? 'name',
              email: userCredential.user!.email ?? 'no email',
              phone: 'not register yet',
              birthday: 'not register yet');

          print('========== uuser model =====================');
          print('${userModel.value}');
          print('========== uuser model =====================');
          Get.put(this);
          Get.toNamed(Routes.GoogleSignupAdditionalInfo);
          appStateController.setSuccess();
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

  /// this function is the logic of facebook auth
  Future<void> signUpSignInWithFacebook() async {
    try {
      appStateController.startLoading();

      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success) {
        /// Create a new credential for Firebase with the Facebook token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(
                loginResult.accessToken!.tokenString);

        print('\n\n=======$facebookAuthCredential=======\n\n');

        final userCredential = await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);

        // check if user signup for first time :
        final userId = await FirebaseFirestore.instance
            .collection('usersData')
            .doc(userCredential.user!.uid)
            .get();

        if (!userId.exists) {
          appStateController.setSuccess();
          userModel.value = UserModel(
              id: userCredential.user!.uid,
              displayName: userCredential.user!.displayName ?? 'name?',
              email: userCredential.user!.email ?? 'email?',
              phone: 'phone',
              birthday: 'birthday');
          Get.put(this);
          Get.toNamed(Routes.WelcomeBackPage);
        } else {
          appStateController.setSuccess();
          Get.toNamed(Routes.WelcomeBackPage);
        }
      } else if (loginResult.status == LoginStatus.cancelled) {
        appStateController.setError('facebook authintication cancelled');
        Get.toNamed(Routes.Login);
      } else if (loginResult.status == LoginStatus.failed) {
        appStateController.setError('facebook authintication failed');
      }
    } catch (e) {
      print('\n\nError in authID with Facebook \n $e\n');
      appStateController.setError('Error in auth with Facebook');
    }
  }

//====================================================================================================
  //  if the user is new and he signup with email .. he will enter additional information

  Future<void> saveUserToFirestore(
    String phone,
    String birthday,
  ) async {
    appStateController.startLoading();
    print('========== uuser mode =====================');
    print('${userModel.value}');
    print('========== uuser mode =====================');

    if (userModel.value !=
        null) // this condition to sure that the user is login or signup
    {
      // upate use info by write the phone & birth
      // Save user details to Firestore

      userModel.value!.phone = phone;
      userModel.value!.birthday = birthday;

      await FirebaseFirestore.instance
          .collection('usersData')
          .add(userModel.value!.toMap())
          .then((_) {
        appStateController.setSuccess();
        Get.toNamed(Routes.WelcomeBackPage);
      }).catchError((e) {
        print('===========$e=======================');
        appStateController.setError('error in save user data to firestore');
      });
    } else {
      appStateController.setError('\n\nnull user \n\n');
    }
  }
}
