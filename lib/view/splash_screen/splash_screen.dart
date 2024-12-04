import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/image_constants.dart';
import 'package:scribd_clone/view/signin_screen/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => SigninScreen(),
      ),
      );
    },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.APPLOGO,
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}