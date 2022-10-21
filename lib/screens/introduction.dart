import 'dart:ui';

import 'package:day1/screens/registration.dart';
import 'package:day1/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/helpers.dart';
import '../widgets/commons/custom_text_style.dart';
import 'login.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final advertisements = [
    'assets/teal.jpg',
    'assets/red.jpg',
    'assets/white.jpg',
  ];
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: _pagecontroller,
                    children: advertisements
                        .map((e) => Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: Image.asset(e,
                                      fit: BoxFit.cover,
                                      height: 50,
                                      width: double.maxFinite),
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: const [
                  Center(
                    child: Text(
                      "LEARN ON THE GO",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                        "Master you skills with fun and learn from very fundamentals",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _pagecontroller,
              count: advertisements.length,
              effect: ExpandingDotsEffect(
                  expansionFactor: 4,
                  dotWidth: 10,
                  dotHeight: 10,
                  spacing: 12,
                  dotColor: Colors.grey[500]!,
                  activeDotColor: AppColors.buttonColor),
            ),
            const SizedBox(height: 40),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              nextScreen(context, const RegistrationScreen());
                            },
                            child:
                                const Text("Sign up", style: buttonTextStyle))),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            side:
                                const BorderSide(color: Colors.blue, width: 2)),
                        onPressed: () {
                          nextScreen(context, const LoginScreen());
                        },
                        child: const Text(
                          'Sign in',
                          style: googlebuttonTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
