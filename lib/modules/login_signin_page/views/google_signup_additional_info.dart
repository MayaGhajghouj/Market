import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../constants/colors.dart';
import '../../../widgets_componants/formdata.dart';

class GoogleSignupAdditionalInfo extends StatelessWidget {
  GoogleSignupAdditionalInfo(
      {super.key, required GoogleSignInAccount googleUser});

  final TextEditingController mobileNumber = TextEditingController();

  final TextEditingController dateOfBirth = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Account',
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
        child: Obx(() {
          // if (authSignUpController.appStateController.state.value ==
          //     AppState.loading)
          //     {
          //   return Center(
          //       child: CircularProgressIndicator(
          //     color: salmon,
          //     backgroundColor: Terracotta,
          //   ));
          // }

          // if (authSignUpController.appStateController.state.value ==
          //     AppState.error)
          //     {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //       AppSnackBar(
          //       context: context,
          //       msg: authSignUpController.appStateController.errorMsg
          //           .toString());
          //   });
          // }
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Date Of Birth',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Black,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  FormDataitem(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your birthday';
                      }
                      return null;
                    },
                    controller: dateOfBirth,
                    keyboardtype: TextInputType.text,
                    hintext: '1/1/2001',
                    fontcolor: salmon,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Black,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  FormDataitem(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your mobile number';
                      }
                      return null;
                    },
                    controller: mobileNumber,
                    keyboardtype: TextInputType.emailAddress,
                    hintext: 'example@example.com',
                    fontcolor: salmon,
                  ),
                  const SizedBox(
                    height: 10.0,
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
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Terracotta,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
