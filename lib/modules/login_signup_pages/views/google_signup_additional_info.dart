import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_state_controller.dart';
import '../../../core/constants/colors.dart';
import '../../../core/app_snackbar.dart';
import '../../../core/manage_app_state/app_status.dart';
import '../../../widgets_componants/formdata.dart';
import '../controllers/google_facebook_login_signup_controller.dart';

class GoogleFacbookSignupAdditionalInfo extends StatelessWidget {
  GoogleFacbookSignupAdditionalInfo({super.key});

  final TextEditingController mobileNumber = TextEditingController();

  final TextEditingController dateOfBirth = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final Google_facebook_LoginSignupControlle googleLoginSignUpContoller =
      Get.find();
  final AppStateController appStateController = Get.find();

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
          if (appStateController.state.value == AppState.loading) {
            return const Center(
                child: CircularProgressIndicator(
              color: salmon,
              backgroundColor: Terracotta,
            ));
          }

          if (appStateController.state.value == AppState.error) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              AppSnackBar(
                  context: context,
                  msg: appStateController.errorMsg.toString());
            });
          }
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
                    hintext: '050492495',
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
                          if (_formKey.currentState!.validate()) {
                            await googleLoginSignUpContoller
                                .saveUserToFirestore(
                                    mobileNumber.text, dateOfBirth.text);
                          }
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
