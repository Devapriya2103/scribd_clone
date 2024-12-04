import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.imageUrl, required this.doc, required this.title, required this.upload, required this.icon1, required this.icon2, required this.des,});

  final String imageUrl;
  final String doc;
  final String title;
  final String upload;
  final IconData icon1;
  final IconData icon2;
  final String des;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
             height: 140,
             width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            doc,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 12,
            ),
            ),
            SizedBox(height: 5),
            Text(
             title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     upload,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                     fontSize: 10,
                    ),
                   ),
                   Row(
                    children: [
                      Icon(icon1,size: 14,),
                      Text(
                      des,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                       fontSize: 10,
                      ),
                     ),
                    ],
                   ),
                  ],
                ),
                SizedBox(width: 6),
                Icon(icon2,size: 14,),
              ],
            ),
        ],
      ),
    );
  }
}