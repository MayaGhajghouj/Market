import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_status.dart';
import 'package:mmarket_interfaces/widgets_componants/formdata.dart';
import '../../../constants/colors.dart';
import '../controllers/signup_controller.dart';

class Signup extends StatefulWidget {
   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final TextEditingController fullName =TextEditingController();

   final TextEditingController emailAddress =TextEditingController();

   final TextEditingController mobileNumber =TextEditingController();

   final TextEditingController dateOfBirth =TextEditingController();

   final TextEditingController password =TextEditingController();

   final TextEditingController confirmPassword =TextEditingController();

   final _formKey = GlobalKey<FormState>();

   final AuthSignUpController authSignUpController=AuthSignUpController();

    bool obscureText=true;

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
        child:
        Obx((){
          if(authSignUpController.appStateController.state.value==AppState.loading )
            {
            return Center(child: CircularProgressIndicator(
              color: salmon,
              backgroundColor: Terracotta,
            ));
            }
          return  Form(
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your birthday';
                      }
                      return null;
                    },
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      controller: password,
                      obscuretext: obscureText,
                      keyboardtype: TextInputType.text,
                      hintext: '●●●●●●●●',
                      fontcolor: salmon,
                      suffixicon:  IconButton(
                        onPressed: () {

                         setState(() {
                           obscureText = !obscureText;
                         });
                        },
                        icon: Icon(
                          color: salmon,
                          obscureText ?
                            Icons.remove_red_eye_rounded
                              :
                              Icons.not_interested
                        ),
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
                      validator: (value) {
                        if (value == null || value.isEmpty )
                        {
                          return 'Please confirm your password';
                        }
                        if(value!=password.text)
                        {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      controller: confirmPassword,
                      keyboardtype: TextInputType.text,
                      hintext: '●●●●●●●●',
                      fontcolor: salmon,
                      suffixicon: IconButton(
                        onPressed: () {

                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                            color: salmon,
                            obscureText ?
                            Icons.remove_red_eye_rounded
                                :
                            Icons.not_interested
                        ),
                      ),
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
                  // this row is for term of use and policy
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
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
                  // this center widget for handle signUp process
                  Center(
                    child: Container(
                      width: 186,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(19.0)),
                        color: salmon,
                      ),
                      child: MaterialButton(
                        onPressed: () async
                        {
                          if(_formKey.currentState!.validate())
                          {
                            await  authSignUpController.authSignUpFunction(
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
                  // this column for sign up process by facebook | google
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
                          // facebook signup
                          IconButton(
                              onPressed: (){},
                              icon: const Icon(
                                Icons.facebook_outlined,
                              )
                          ),
                          // google signup
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
                  // this  row for login process if user signed
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
                          Get.toNamed(Routes.Login);
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
          );
        }

        ),
      ),
    );
  }
}
