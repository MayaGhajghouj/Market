import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/models/user_model.dart';

class FacebookLoginSignUpController {
  final AppStateController appStateController = Get.find();
  Rx<UserModel?> userModel = Rx(null);

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
}
