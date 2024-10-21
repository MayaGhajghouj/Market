import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/snackbar.dart';

import '../../../core/manage_app_state/app_state_controller.dart';

class AuthSignUpController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AppStateController appStateController = Get.put(AppStateController());

  Future<void> emailPasswordAuthSignUpFunction({
    required String fullName,
    required String emailAddress,
    required String mobileNumber,
    required String dateOfBirth,
    required String password,
    required BuildContext context,
  }) async {
    try {
      appStateController.startLoading();
      final credentalUser = await _auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      User? user = credentalUser.user;
      print('\n====== $user ========\n');

      if (user != null) // Create a new user with his information
      {
        final userData = <String, dynamic>{
          "fullName": fullName,
          "emailAddress": emailAddress,
          "mobileNumber": mobileNumber,
          "dateOfBirth": dateOfBirth,
        };

        // Add a new document with a generated ID
        await _firestore
            .collection("usersData")
            .doc(user.uid)
            .set(userData)
            .then((_) {
          print('\ndata is added to firestore collection USERDATA.\n');
          appStateController.setSuccess();
          AppSnackBar(context: context, msg: 'Signup Success');
        }).catchError((e) {
          appStateController.setError('SignUp failed');
          print('\nError in adding data to firestore $e \n');
        });

        // Send verification email to validate the user
        await user.sendEmailVerification().then((_) {
          print('\nVerification email sent.\n');
          AppSnackBar(
              context: context, msg: 'Verification email sent.Open the box');
          Future.delayed(const Duration(seconds: 4), () {
            Get.toNamed(Routes.Login);
          });
        }).catchError((e) {
          appStateController.setError('Cant send verification email');
          print('\nError in sending nVerification email $e\n .\n');
          // AppSnackBar(context: context, msg: 'Verification email didnt send');
        });
      }
    } //try
    on FirebaseAuthException catch (e) {
      appStateController.setError(
        e.code == 'weak-password'
            ? 'The password provided is too weak.'
            : e.code == 'email-already-in-use'
                ? 'The account already exists for that email.'
                : e.code == 'invalid-email'
                    ? 'The email address is badly formatted.'
                    : 'Error: $e',
      );
    } catch (e) {
      appStateController.setError('Error in signup: $e');
      AppSnackBar(context: context, msg: appStateController.errorMsg.value);
      print('Error in signup \n $e');
    }
  }
}
