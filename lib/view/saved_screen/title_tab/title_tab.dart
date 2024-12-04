import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';

class TitleTab extends StatelessWidget {
  const TitleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.tune_outlined)
                  ),
                SizedBox(width: 12),
                Container(
                  height: 35,
                  width: 84,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(child: Text("Downloaded",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                ),
                SizedBox(width: 12),
                Container(
                  height: 35,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(child: Text("Hide Finished Titles",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("0 Titles",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,),
              ],
            ),
          ),
          Divider(color: Colors.grey,),
           SizedBox(height: 15),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
              children: [
                Container(
                  height: 140,width: 140,
                  child: Image.asset(ImageConstants.ACCPG,fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 10),
                  Text("Explore all you want to read",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bookmark_border,size: 20,),
                      SizedBox(width: 5),
                      Text("Save your favorite titles for later.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],
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
        ],
      ),
    );
  }
}