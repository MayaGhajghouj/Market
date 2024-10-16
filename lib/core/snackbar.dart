
import 'package:flutter/material.dart';

import '../constants/colors.dart';

void AppSnackBar ({required BuildContext context, required String msg }){

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(msg,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          color: Terracotta,
        ),
        ),
      backgroundColor: salmon,
      duration: Duration(seconds: 5),
  ),
  );

}
