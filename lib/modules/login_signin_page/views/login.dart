import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmarket_interfaces/constants/colors.dart';
import 'package:mmarket_interfaces/core/app_routers.dart';
import 'package:mmarket_interfaces/core/manage_app_state/app_status.dart';
import 'package:mmarket_interfaces/core/app_snackbar.dart';
import 'package:mmarket_interfaces/widgets_componants/formdata.dart';
import '../controllers/google_login_signup_controller.dart';
import '../controllers/password&email_login_controller.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController password = TextEditingController();

  final TextEditingController emailAddress = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final AuthSignInController authSignInController = AuthSignInController();

  bool obscureText = true;

  final Google_facebook_LoginSignupControlle google_facebook_LoginSignupControlle = Google_facebook_LoginSignupControlle();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log In',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: salmon,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (authSignInController.appStateController.state.value ==
            AppState.loading) {
          return const Center(
              child: CircularProgressIndicator(
            color: salmon,
            backgroundColor: Terracotta,
          ));
        }
        if (authSignInController.appStateController.state.value ==
            AppState.error) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            AppSnackBar(
                context: context,
                msg: authSignInController.appStateController.errorMsg
                    .toString());
          });
        }
        return Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Black,
                    ),
                  ),
                  const Text(
                    'Please enter your details to proceed.',
                    style: TextStyle(
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Black,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Username or email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FormDataitem(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    controller: emailAddress,
                    keyboardtype: TextInputType.text,
                    hintext: 'example@example.com',
                    fontcolor: salmon,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FormDataitem(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      controller: password,
                      keyboardtype: TextInputType.text,
                      hintext: '●●●●●●●●',
                      fontcolor: salmon,
                      obscuretext: obscureText,
                      suffixicon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                            color: salmon,
                            obscureText
                                ? Icons.remove_red_eye_rounded
                                : Icons.not_interested),
                      )),
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
                            await authSignInController
                                .passwordEmailauthLoginFunction(
                                    emailAddress: emailAddress.text,
                                    password: password.text,
                                    context: context);
                          }
                        },
                        child: const Text(
                          'Log In',
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
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'forget password?',
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
                      const Text(
                        'or sign up with',
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
                          // facebook login
                          IconButton(
                              onPressed: () async {
                                google_facebook_LoginSignupControlle
                                    .signUpSignInWithFacebook();
                              },
                              icon: const Icon(
                                Icons.facebook_outlined,
                              )),
                          // google login
                          IconButton(
                              onPressed: () async {
                                await google_facebook_LoginSignupControlle.signUpSignInWithGoogle();
                              },
                              icon: const Icon(
                                Icons.alternate_email,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don’t have an account? ',
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
                            child: const Text(
                              'Sign up',
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
        );
      }),
    );
  }
}
