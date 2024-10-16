import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/widgets_componants/formdata.dart';

import '../../../constants/colors.dart';
import '../controllers/signupController.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
   final TextEditingController fullName =TextEditingController();
   final TextEditingController emailAddress =TextEditingController();
   final TextEditingController mobileNumber =TextEditingController();
   final TextEditingController dateOfBirth =TextEditingController();
   final TextEditingController password =TextEditingController();
   final TextEditingController confirmPassword =TextEditingController();
   final _formKey = GlobalKey<FormState>();
   final AuthSignUpController authSignUpController=AuthSignUpController();
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
          key: _formKey,
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
                  controller: fullName,
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
                  controller: emailAddress,
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
                  controller: mobileNumber,
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
                  controller: dateOfBirth,
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
                  controller: password,
                  obscuretext: true,
                    keyboardtype: TextInputType.text,
                    hintext: '●●●●●●●●',
                    fontcolor: salmon,
                    suffixicon: const Icon(Icons.remove_red_eye,
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
                  controller: confirmPassword,
                    keyboardtype: TextInputType.text,
                    hintext: '●●●●●●●●',
                    fontcolor: salmon,
                    suffixicon: const Icon(Icons.remove_red_eye,
                      color: salmon,
                    )
                ),
                const SizedBox(height: 10.0,),
                const Center(
                  child: Text('By continuing, you agree to ',
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
                    const Text('and',
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(19.0)),
                      color: salmon,
                    ),
                    child: MaterialButton(
                      onPressed: ()  {
                     if(_formKey.currentState!.validate()){
                         authSignUpController.authSignUpFunction(
                           context: context,
                           fullName: fullName.text,
                           emailAddress: emailAddress.text,
                           mobileNumber: mobileNumber.text,
                           dateOfBirth: dateOfBirth.text,
                           password: password.text,);
                     }
                      },
                      child: const Text('Sign Up',
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
                            icon: const Icon(
                              Icons.facebook_outlined,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
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
