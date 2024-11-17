import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_routers.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/modules/login_signup_pages/controllers/user_controller.dart';

import '../../../core/manage_app_state/app_state_controller.dart';
import '../../../models/user_model.dart';

class AuthSignUpController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AppStateController _appStateController = Get.find();
  AppStateController get appStateController => _appStateController;

  Future<void> emailPasswordAuthSignUpFunction({
    required String fullName,
    required String emailAddress,
    required String mobileNumber,
    required String dateOfBirth,
    required String password,
    required BuildContext context,
  }) async {
    try {
      _appStateController.startLoading();
      final credentalUser = await _auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      // the process above just take the email and password and store it in the User obj
      // but all aditional values still want to fill it because they take null value

      User? user = credentalUser.user;
      print('\n====== $user ========\n');

      if (user !=
          null) // if the (password & email are vaild & the user is created in firebase) then he will enter
      {
        final UserModel userModel = UserModel(
          id: user.uid,
          displayName: user.displayName ??
              fullName, // the null value will be in the displayName by default
          email: user.email ?? emailAddress,
          phone: user.phoneNumber ?? mobileNumber,
          birthday: dateOfBirth,
          password: password,
        );
        UserController.setUser(userModel);
        // convert the model to map cause to store in the firestore
        // Add a new document with a generated ID
        await _firestore
            .collection("usersData")
            .doc(user.uid)
            .set(userModel.toMap())
            .then((_) {
          print('\ndata is added to firestore collection USERDATA.\n');
          _appStateController.setSuccess();
          AppSnackBar(context: context, msg: 'Signup Success');
        }).catchError((e) {
          _appStateController.setError('SignUp failed');
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
          _appStateController.setError('Cant send verification email');
          print('\nError in sending nVerification email $e\n .\n');
          // AppSnackBar(context: context, msg: 'Verification email didnt send');
        });
      }
    } //try
    on FirebaseAuthException catch (e) {
      _appStateController.setError(
        e.code == 'weak-password'
            ? 'The password provided is too weak.'
            : e.code == 'email-already-in-use'
                ? 'The account already exists for that email.'
                : e.code == 'invalid-email'
                    ? 'The email address is badly formatted.'
                    : 'Error: $e',
      );
    } catch (e) {
      _appStateController.setError('Error in signup: $e');
      AppSnackBar(context: context, msg: _appStateController.errorMsg.value);
      print('Error in signup \n $e');
    }
  }
}
