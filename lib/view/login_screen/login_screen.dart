import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';
import 'package:scribd_clone/view/global_widgets/custom_buttons.dart';
import 'package:scribd_clone/view/global_widgets/custom_input_field.dart';
import 'package:scribd_clone/view/start_screen/start_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
              Icon(Icons.close,size: 25),
              SizedBox(width: 16),
              Icon(Icons.tune),
              SizedBox(width: 12),
              Text("auth.scribd.com"),
              Spacer(),
              Icon(Icons.share,size: 25),
              SizedBox(width: 12),
              Icon(Icons.more_vert,size: 25), 
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Center(child: Image(image: AssetImage(ImageConstants.APPLOGO))),
                ),
              ),
              SizedBox(height: 12),
              Text("Create your account",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 10),
              Text("One subscription for Scribd, Everand, and SliseShare",
              style: TextStyle(
                fontSize: 12,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20,
                        backgroundImage: AssetImage(ImageConstants.GOOGLE),
                        ),
                        SizedBox(width: 10),
                        Text("Continue with Google",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.BLACK,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20,
                        backgroundImage: AssetImage(ImageConstants.FACEBOOK),
                        ),
                        SizedBox(width: 10),
                        Text("Continue with Facebook",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.BLACK,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20,
                        backgroundImage: AssetImage(ImageConstants.APPLE),
                        ),
                        SizedBox(width: 10),
                        Text("Continue with Apple",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.BLACK,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text("OR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomInputField(
                  hintText: "Email address*",
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomInputField(
                  hintText: "Password*",
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomButtons(
                  onButtonPressed: () {
                     Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                      builder: (context) => StartScreen(),
                 ),
                  (route) => false,
                             );
                },
                buttonText: "Continue"
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Already have an account or subscription to Scribd? Use your Scribd username and password. Sign in",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400, 
                  color: ColorConstants.BLACK,
                ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("By continuing, you agree to Scribd's Terms of Service and Privacy Policy.",
                style: TextStyle(
                  fontSize: 12,
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