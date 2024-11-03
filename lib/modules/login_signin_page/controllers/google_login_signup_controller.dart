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
      await FirebaseFirestore.instance
          .collection('usersData')
          .doc(userCredential.user!.uid) // firebase id creation
          .get()
          .then((Value) {
        if (!Value.exists) {
          // User is new
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