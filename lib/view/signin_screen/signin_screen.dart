import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';
import 'package:scribd_clone/view/global_widgets/custom_buttons.dart';
import 'package:scribd_clone/view/login_screen/login_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Skip",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: ColorConstants.PRIMARY,
            ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstants.APPLOGO,
                    height: 40,
                    width: 40,
                    ),
                    SizedBox(width: 10),
                    Text("SCRIBD",
                    style: TextStyle(
                      fontSize: 22,
                      color: ColorConstants.BLACK,
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(textAlign: TextAlign.center,
                    "Explore 170M+ \ndocuments \nfrom a global community",
                  style: TextStyle(
                    color: ColorConstants.BLACK,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
                // SizedBox(height: 10),
                Spacer(),
                Center(
                  child: Image.asset(ImageConstants.ACCPG,
                  height: 300,
                  width: 300,
                  ),
                ),
                // SizedBox(height: 10),
                Spacer(),
                CustomButtons(
                   onButtonPressed: () {
                   Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
               ),
                (route) => false,
             );
              },
                buttonText: "Create an account",
             ),
            //  SizedBox(height: 10),
            Spacer(),
             Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorConstants.PRIMARY),
              ),
              height: 55,
              width: double.infinity,
              child: Text("Sign in",
              style: TextStyle(
                color: ColorConstants.PRIMARY,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}