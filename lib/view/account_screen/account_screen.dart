import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(child: CircleAvatar(radius: 30,
              backgroundImage: AssetImage(ImageConstants.APPLOGO),
              ),
              ),
              SizedBox(height: 12),
              Text("Hi, User",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: ColorConstants.BLACK),
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Account Information",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Learn more about Everand Scribd",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("FAQs & Support",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Report an issue",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Language Preference",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                        ),
                        Spacer(),
                        Text("English",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.PRIMARY),
                        ),
                      ],
                    ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Downloads",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Notification Settings",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Privacy",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,),
                    SizedBox(height: 8),
                    Text("Open Source Licenses",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
                  ),
                  SizedBox(height: 8),
                  Divider(color: Colors.grey.shade700,)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.APPLOGO,height: 40,width: 40,),
                  SizedBox(width: 10),
                  Text("SCRIBD",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: ColorConstants.BLACK),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Text("Made in San Francisco",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
              ),
              SizedBox(height: 14),
              Text("Scribd version 14.15 (Google Play)",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
              ),
            ],
          ),
        ),
      ),
    );
  }
}