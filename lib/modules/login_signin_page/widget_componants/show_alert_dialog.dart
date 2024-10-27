import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';

import '../../../core/app_snackbar.dart';

void showEmailNotReceivedDialog(
    {required BuildContext context, required User user}) {
  final AppStateController appStateController = Get.find();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Email Not Verified'),
        content: const Text(
            'It seems you have not received the email. Would you like to resend it?'),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Get.back();
              appStateController.setSuccess();
            },
          ),
          TextButton(
            child: const Text('Resend Email'),
            onPressed: () async {
              appStateController.startLoading();
              await user.sendEmailVerification().then((_) {
                appStateController.setSuccess();
                print('\nResent Verification email .\n');
                AppSnackBar(context: context, msg: 'Verification email resent');
                Future.delayed(const Duration(seconds: 4), () {});
                Get.back();
              }).catchError((e) {
                appStateController.setError('Cant resend verification email');
                print('\nError in resending nVerification email $e\n .\n');
                // AppSnackBar(context: context, msg: 'Verification email didnt send');
              });
            },
          ),
        ],
      );
    },
  );
}
