/*
Future<void> AuthLoginFunction({
  required String emailAddress,
  required String password,
}) async {
  try {
    final credentialUser = await _auth.signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    User? user = credentialUser.user;
    if (user != null) {
      // Check if the email is verified
      if (!user.emailVerified) {
        print('Email is not verified. Please verify your email before logging in.');
        // You can show a dialog or Snackbar here
        return; // Prevent further execution
      }

      // Proceed with login if verified
      print('User logged in successfully');
      // Navigate to the main page or home page
    }
  } on FirebaseAuthException catch (e) {
    // Handle errors
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  } catch (e) {
    print('error in login \n $e');
  }
}

* */