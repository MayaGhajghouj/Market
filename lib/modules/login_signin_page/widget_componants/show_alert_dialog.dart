import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';

void showEmailNotReceivedDialog(
    {required BuildContext context, required User user}) {
  final AppStateController appStateController = Get.put(AppStateController());
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Email Not Verified'),
        content: Text(
            'It seems you have not received the email. Would you like to resend it?'),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Get.back();
              appStateController.setSuccess();
            },
          ),
          TextButton(
            child: Text('Resend Email'),
            onPressed: () async {
              appStateController.startLoading();
              // Call your function to resend the email here
              await user.sendEmailVerification();
            },
          ),
        ],
      );
    },
  );
}
