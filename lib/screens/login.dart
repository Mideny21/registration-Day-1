import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:day1/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/helpers.dart';
import '../widgets/commons/custom_text_style.dart';
import 'registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Email",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              fillColor: AppColors.backButtonField,
                              filled: true,
                              errorBorder: const UnderlineInputBorder(),
                              focusedErrorBorder: const UnderlineInputBorder(),
                              contentPadding: const EdgeInsets.all(6),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.buttonColor)),
                              labelStyle: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              suffixIcon: Icon(
                                Icons.check,
                                color: AppColors.buttonColor,
                              )
                              // prefixIcon: Icon(Icons.phone, size: 18.sp),
                              )),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      TextFormField(
                          decoration: const InputDecoration(
                              fillColor: AppColors.backButtonField,
                              labelText: '',
                              filled: true,
                              errorBorder: const UnderlineInputBorder(),
                              focusedErrorBorder: const UnderlineInputBorder(),
                              contentPadding: const EdgeInsets.all(6),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.buttonColor),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              suffixIcon: Icon(Icons.visibility_outlined,
                                  color: AppColors.buttonColor)
                              // prefixIcon: Icon(Icons.phone, size: 18.sp),
                              )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: buttonTextStyle,
                          ))),
                  const SizedBox(height: 40),
                  Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 15,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign Up",
                            style: underlineStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                nextScreen(context, const RegistrationScreen());
                              }),
                      ])),
                ]),
          ),
        ),
      )),
    );
  }
}

class AccountTitle extends StatelessWidget {
  final String title;
  final String title2;
  const AccountTitle({
    Key? key,
    required this.title,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        Text(
          title2,
          style: titleStyle,
        )
      ],
    );
  }
}
