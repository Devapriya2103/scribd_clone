import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/image_constants.dart';

class NotebookTab extends StatelessWidget {
  const NotebookTab({super.key});

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
                    width: 84,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text("Bookmarks",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text("Highlights",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text("Notes",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                  ),
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
                  Text("You haven't annotated anything yet",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 20),
                  Text("While reading on Scribd, you can:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.drive_file_rename_outline_sharp,size: 20,),
                      SizedBox(width: 5),
                      Text("Highlight important passages",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.note_add_outlined,size: 20,),
                      SizedBox(width: 5),
                      Text("Take notes as you're reading",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bookmark_add_outlined,size: 20,),
                      SizedBox(width: 5),
                      Text("Bookmark your favorite pages",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],
                  ),
              ],
             ),
           ),
        ],
      ),
    );
  }
}