import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';

void showEmailNotReceivedDialog ({required BuildContext context, required User user})
{
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Email Not Verified'),
        content: Text('It seems you have not received the email. Would you like to resend it?'),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Get.toNamed(Routes.Login);
            },
          ),
          TextButton(
            child: Text('Resend Email'),
            onPressed: () async {
              // Call your function to resend the email here
             await user.sendEmailVerification();
             },
          ),
        ],
      );
    },
  );
}
