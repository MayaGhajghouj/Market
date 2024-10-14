import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/widgets_componants/formdata.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In',
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
                const Text('Welcome',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Black,
                  ),
                ),
                const Text('Please enter your details to proceed.',
                  style: TextStyle(
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 30.0,),
                const Text('Username or email',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Black,
                  ),
                ),
                const SizedBox(height: 10.0,),
                FormDataitem(
                    keyboardtype: TextInputType.text,
                    hintext: 'example@example.com',
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
                const SizedBox(height: 10.0,),
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
                  child: Container(
                    width: 186,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(19.0)),
                      color: salmon,
                    ),
                    child: MaterialButton(
                        onPressed: (){},
                      child: Text('Log In',
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
                Center(
                  child: TextButton(
                    onPressed: () {  },
                    child: Text('forget password?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'League Spartan',
                        color: Black,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don’t have an account? ',
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
                          child: const Text('Sign up',
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
              ],

            ),
          ),
        ),
      ),
    );
  }
}
