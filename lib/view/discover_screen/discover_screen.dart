import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: ColorConstants.PRIMARY,width: 10),
                  ),
                  prefixIcon: Icon(Icons.search,color: ColorConstants.PRIMARY,),
                  hintText: "Title,author,genre,topic",
                ),
              ),
              SizedBox(height: 22),
              Container(
                width: double.infinity, 
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Browse all", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 15),
                  Text("Career & Growth", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Business", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Finance & Money Management", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Politics", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Sports & Recreation", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Games & Activities", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Comics & Graphic Novels", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Social Science", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("True Crime", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Philosophy", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Literary Criticism", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Cooking Food & Wine", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Sheet Music", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Biography & Memoir", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Study Aids & Test Prep", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Language Arts & Discipline", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Foreign Language Studies", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Teaching Methods & Materials", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Law", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Home & Garden", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Art", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Self-Improvement", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Wellness", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Science & Mathematics", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Computer", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Technology & Engineering", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("History", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("Religion & Spirituality", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                  Text("", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(height: 15),
                 ],
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}