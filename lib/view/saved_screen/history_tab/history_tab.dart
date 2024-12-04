import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
              children: [
                Container(
                  height: 140,width: 140,
                  child: Image.asset(ImageConstants.ACCPG,fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 10),
                  Text("You haven't read anything yet",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 10),
                  Text("Start reading and keep track of your reading history here.",textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                  SizedBox(height: 10),
                  Text("Explore Scribd",
                  style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.PRIMARY
                      ),
                  ),
              ],
             ),
      ),
    );
  }
}