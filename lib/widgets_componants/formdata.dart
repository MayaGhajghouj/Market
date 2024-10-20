
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget FormDataitem({
  required TextEditingController controller,
  required TextInputType keyboardtype,
  required String hintext ,
  required Color fontcolor,
  Widget? suffixicon,
  bool obscuretext=false,
  String? Function(String?)? validator,
}){
  return TextFormField(
    validator: validator,
    controller: controller,
    obscureText: obscuretext,
    keyboardType: keyboardtype,
    decoration: InputDecoration(
      suffixIcon: suffixicon,
      hintText: hintext,
      hintStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: fontcolor,
      ),
      filled: true,
      fillColor: Beige,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15),),
        borderSide: BorderSide.none,
      ),

    ),
  );
}