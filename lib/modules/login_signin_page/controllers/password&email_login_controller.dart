import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/models/user_model.dart';
import 'package:mmarket_interfaces/modules/login_signin_page/controllers/user_controller.dart';

import '../widget_componants/show_alert_dialog.dart';

class AuthSignInController extends GetxController {
  final AppStateController appStateController = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
      if (user == null) {
        // Handle case where the user is not logged in
        throw Exception("User is not logged in");
      }

      // Check if the email is verified
      if (user.emailVerified) {
        final userQuery =
            await _firestore.collection('usersData').doc(user.uid).get();

        if (userQuery.exists) {
          final userModel = UserModel.fromMap(userQuery.data()!);

          appStateController.setSuccess();

          print('\nUser logged in successfully\n');
          AppSnackBar(context: context, msg: 'User logged in successfully');

          // Get.toNamed(Routes.WelcomeBackPage, arguments: userModel);
          Get.toNamed(Routes.WelcomeBackPage);
          UserController.setUser(userModel);
        } else {
          print('No data for current user');
          appStateController.setError('No data for current user ');
        }
      } else {
        appStateController.setError('Email did not verified');
        print('\nEmail did not verified \n');
        showEmailNotReceivedDialog(context: context, user: user);
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
