import 'package:flutter/material.dart';
import 'package:scribd_clone/dummy%20_db.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/utils/image_constants.dart';
import 'package:scribd_clone/view/global_widgets/custom_buttons.dart';
import 'package:scribd_clone/view/home_screen/widgets/book_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 10,
          width: 10,
          child: Image.asset(
            ImageConstants.APPLOGO,
            fit: BoxFit.cover,
            ),
            ),
            title: Text("SCRIBD",style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 3, 27)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text("Read Anywhere.Anytime.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text("Discover 170M+ documents across every topic \nand niche.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButtons(onButtonPressed: () {}, 
                      buttonText: "Read Free for 30 Days"
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Cancel anytime",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Trending in Wellness",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK,
                  ),
                  ),
                  Spacer(),
                  Text("More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.PRIMARY,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // SizedBox(
            //   height: 250,
            // child: ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: 10,
            //   itemBuilder: (context, index) => Wellness(),)),
             SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DummyDb.wellNess.length,
                itemBuilder: (context, index) => BookList(
                  imageUrl: DummyDb.wellNess[index]["imageURL"], 
                  doc: DummyDb.wellNess[index]["doc"], 
                  title: DummyDb.wellNess[index]["title"], 
                  upload: DummyDb.wellNess[index]["upload"], 
                  icon1: DummyDb.wellNess[index]["icon1"], 
                  icon2: DummyDb.wellNess[index]["icon2"], 
                  des: DummyDb.wellNess[index]["des"],
                 ),
               ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Trending in Career & Growth",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK,
                  ),
                  ),
                  Spacer(),
                  Text("More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.PRIMARY,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DummyDb.careerGrowth.length,
                itemBuilder: (context, index) => BookList(
                  imageUrl: DummyDb.careerGrowth[index]["imageURL"], 
                  doc: DummyDb.careerGrowth[index]["doc"], 
                  title: DummyDb.careerGrowth[index]["title"], 
                  upload: DummyDb.careerGrowth[index]["upload"], 
                  icon1: DummyDb.careerGrowth[index]["icon1"], 
                  icon2: DummyDb.careerGrowth[index]["icon2"], 
                  des: DummyDb.careerGrowth[index]["des"],
                 ),
               ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Trending in Business",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK,
                  ),
                  ),
                  Spacer(),
                  Text("More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.PRIMARY,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DummyDb.busiNess.length,
                itemBuilder: (context, index) => BookList(
                  imageUrl: DummyDb.busiNess[index]["imageURL"], 
                  doc: DummyDb.busiNess[index]["doc"], 
                  title: DummyDb.busiNess[index]["title"], 
                  upload: DummyDb.busiNess[index]["upload"], 
                  icon1: DummyDb.busiNess[index]["icon1"], 
                  icon2: DummyDb.busiNess[index]["icon2"], 
                  des: DummyDb.busiNess[index]["des"],
                 ),
               ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Business Templates",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK,
                  ),
                  ),
                  Spacer(),
                  Text("More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.PRIMARY,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DummyDb.businessTemplates.length,
                itemBuilder: (context, index) => BookList(
                  imageUrl: DummyDb.businessTemplates[index]["imageURL"], 
                  doc: DummyDb.businessTemplates[index]["doc"], 
                  title: DummyDb.businessTemplates[index]["title"], 
                  upload: DummyDb.businessTemplates[index]["upload"], 
                  icon1: DummyDb.businessTemplates[index]["icon1"], 
                  icon2: DummyDb.businessTemplates[index]["icon2"], 
                  des: DummyDb.businessTemplates[index]["des"],
                 ),
               ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Trending in Art",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK,
                  ),
                  ),
                  Spacer(),
                  Text("More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.PRIMARY,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DummyDb.Art.length,
                itemBuilder: (context, index) => BookList(
                  imageUrl: DummyDb.Art[index]["imageURL"], 
                  doc: DummyDb.Art[index]["doc"], 
                  title: DummyDb.Art[index]["title"], 
                  upload: DummyDb.Art[index]["upload"], 
                  icon1: DummyDb.Art[index]["icon1"], 
                  icon2: DummyDb.Art[index]["icon2"], 
                  des: DummyDb.Art[index]["des"],
                 ),
               ),
            ),
          ],
        ),
      ),
    );
  }
}