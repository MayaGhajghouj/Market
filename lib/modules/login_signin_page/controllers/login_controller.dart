import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/core/snackbar.dart';

import '../widget_componants/show_alert_dialog.dart';

class AuthSignInController extends GetxController {
  final AppStateController appStateController = Get.put(AppStateController());
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> passwordEmailauthLoginFunction({
    required String emailAddress,
    required String password,
    required context,
  }) async {
    try {
      appStateController.startLoading();
      final credentialUser = await _auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      User? user = credentialUser.user;
      if (user != null) {
        // Check if the email is verified
        if (user.emailVerified) {
          appStateController.setSuccess();
          print('\nUser logged in successfully\n');
          AppSnackBar(context: context, msg: 'User logged in successfully');
          Get.toNamed(Routes.WelcomeBackPage);
        } else {
          appStateController.setError('Email did not verified');
          print('\nEmail did not verified \n');
          showEmailNotReceivedDialog(context: context, user: user);
        }
      }
    } on FirebaseAuthException catch (e) {
      appStateController.setError(
        e.code == 'user-not-found'
            ? 'No user found for that email.'
            : e.code == 'wrong-password'
                ? 'Wrong password provided for that user.'
                : e.code == 'invalid-email'
                    ? 'The email address is badly formatted.'
                    : e.code == 'too-many-requests'
                        ? 'Too many unsuccessful login attempts. Please try again later.'
                        : 'Error: $e',
      );
    } catch (e) {
      appStateController.setError('Error in login: $e');
      AppSnackBar(context: context, msg: appStateController.errorMsg.value);
      print('Error in Login \n $e');
    }
  }
}
