import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';
import 'package:scribd_clone/view/bot_navbar_screen/bot_navbar_screen.dart';
import 'package:scribd_clone/view/global_widgets/custom_buttons.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Center(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                 ),
              SizedBox(height: 15),
              Center(
                child: Text("Start your free trial",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Free for 30 days, then ₹299.00/month. Cancel anytime",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  color: Color.fromARGB(255, 248, 241, 241),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Get access to:",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 14),
                          Text("170M+ documents on Scribd",style: TextStyle(fontSize: 14),textAlign: TextAlign.start,),
                          SizedBox(height: 14),
                          Text("Ebooks, audiobooks, and more on Everand",style: TextStyle(fontSize: 14),textAlign: TextAlign.start,),
                          SizedBox(height: 14),
                          Text("Millions of presentations on Slideshare",style: TextStyle(fontSize: 14),textAlign: TextAlign.start,),
                          SizedBox(height: 14),
                          Divider(color: Colors.grey,),
                          SizedBox(height: 14),
                          Text("Don't worry, we'll email you n\before your free trial ends",
                             maxLines: 2,
                             style: TextStyle(fontSize: 14),
                           ),
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CustomButtons(
                              onButtonPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => BotNavbarScreen(),),
                                 );
                              }, 
                              buttonText: "Start your free trial"
                              ),
                           ),
                            SizedBox(height: 14),
                            Text("Maybe Later",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: ColorConstants.PRIMARY
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
         ],
      ),
    );
  }
}