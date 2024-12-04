import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';

class ListTab extends StatelessWidget {
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.format_list_bulleted_add,color: ColorConstants.PRIMARY,),
                SizedBox(width: 10),
                Text("Create a List",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.PRIMARY
                ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("0 Lists",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,),
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
                  Text("You haven't created any lists yet.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 10),
                  Text("Organize your Saved items into reading lists.",textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
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