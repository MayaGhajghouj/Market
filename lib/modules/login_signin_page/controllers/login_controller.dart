import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/snackbar.dart';

import '../widget_componants/show_alert_dialog.dart';

class AuthSignInController extends GetxController{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  var Isloadin= false.obs;

  Future<void> authLoginFunction({
    required String emailAddress,
    required String password,
    required context,
  }) async {
    try {
      Isloadin.value=true;
      final credentialUser = await _auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      User? user = credentialUser.user;
      if (user != null)
      {
        // Check if the email is verified
        if (user.emailVerified)
        {
          Isloadin.value=false;
          print('\nUser logged in successfully\n');
          AppSnackBar(context: context, msg: 'User logged in successfully');
          Get.toNamed(Routes.WelcomeBackPage);
        }
        else{
          print('\nEmail did not verified \n');
          showEmailNotReceivedDialog(context: context, user: user);
        }
      }
    } on FirebaseAuthException catch (e) {
      // Handle errors
      if (e.code == 'user-not-found') {
        print('\nNo user found for that email.\n');
        AppSnackBar(context: context, msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('\nWrong password provided for that user.\n');
        AppSnackBar(context: context, msg: 'Wrong password provided for that user.');

      }
    } catch (e)
    {
      print('\nerror in login \n $e');
    }
    finally{
      Isloadin.value=false;
    }
  }



}






