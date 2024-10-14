import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/widgets_componants/formdata.dart';

import '../../../constants/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Create Account',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: salmon,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Full name',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                  keyboardtype: TextInputType.text,
                  hintext: 'Maya ghajghouj',
                  fontcolor: salmon,
                ),
                const SizedBox(height: 10.0,),

                const Text('Email',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                    keyboardtype: TextInputType.emailAddress,
                    hintext: 'example@example.com',
                    fontcolor: salmon,
                ),
                const SizedBox(height: 10.0,),

                const Text('Mobile Number',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                    keyboardtype: TextInputType.phone,
                    hintext: '+ 123 456 789',
                    fontcolor: salmon,
                ),
                const SizedBox(height: 10.0,),

                const Text('Date of birth',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                    keyboardtype: TextInputType.datetime,
                    hintext: 'DD / MM /YYY',
                    fontcolor: salmon,
                ),
                const SizedBox(height: 10.0,),

                const Text('Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                  obscuretext: true,
                    keyboardtype: TextInputType.text,
                    hintext: '●●●●●●●●',
                    fontcolor: salmon,
                    suffixicon: Icon(Icons.remove_red_eye,
                      color: salmon,
                    )
                ),
                const SizedBox(height: 10.0,),

                const Text('Confirm Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 5.0,),
                FormDataitem(
                    keyboardtype: TextInputType.text,
                    hintext: '●●●●●●●●',
                    fontcolor: salmon,
                    suffixicon: Icon(Icons.remove_red_eye,
                      color: salmon,
                    )
                ),
                const SizedBox(height: 10.0,),
                Center(
                  child: const Text('By continuing, you agree to ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'League Spartan',
                      color: Black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.Signup);
                      },
                      child: const Text('Terms of Use ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Black,
                        ),
                      ),
                    ),
                    Text('and',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'League Spartan',
                        color: Black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.Signup);
                      },
                      child: const Text('Privacy Policy',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: Black,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 186,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(19.0)),
                      color: salmon,
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text('Sign Up',
                        style: TextStyle(
                          fontWeight:FontWeight.w600 ,
                          fontSize:20 ,
                          fontFamily:'Poppins' ,
                          color: Terracotta,

                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text('or sign up with',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'League Spartan',
                        color: Black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.facebook_outlined,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.alternate_email,
                            )
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'League Spartan',
                        color: Black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.Signup);
                      },
                      child: const Text('Log In',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'League Spartan',
                          color: salmon,
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),

    );
  }
}
