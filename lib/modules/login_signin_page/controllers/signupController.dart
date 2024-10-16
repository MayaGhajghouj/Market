import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthSignUpController{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> AuthSignUpFunction (
      {
        required String fullName,
        required String emailAddress,
        required String mobileNumber,
        required String dateOfBirth,
        required String password,

      }) async {
    try {
      final credentalUser = await _auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      User? user = credentalUser.user;
      print('====== $user ========');
      if(user != null) // Create a new user with his informations
      {
        final userData = <String, dynamic>{
          "fullName": fullName,
          "emailAddress": emailAddress,
          "mobileNumber": mobileNumber,
          "dateOfBirth": dateOfBirth,
        };
        // Add a new document with a generated ID
       await _firestore.collection("users").doc(user.uid).set(userData);
      }
      await user?.sendEmailVerification();
      print('User registered successfully. Verification email sent.');

    }//try
    on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password')
      {
        print('The password provided is too weak.');
      }
      else if (e.code == 'email-already-in-use')
      {
        print('The account already exists for that email.');
      }
    } catch (e)
    {
      print('error in sign up \n $e');
    }
  }

}







