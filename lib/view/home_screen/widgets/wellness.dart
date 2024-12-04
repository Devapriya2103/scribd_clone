import 'package:flutter/material.dart';

class Wellness extends StatelessWidget {
  const Wellness({super.key});

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
              "https://images.pexels.com/photos/9572525/pexels-photo-9572525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
             height: 140,
             width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Document",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 12,
            ),
            ),
            SizedBox(height: 5),
            Text(
             "12 Physical edu...",
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
                     "UPLOADED BY",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                     fontSize: 10,
                    ),
                   ),
                   Row(
                    children: [
                      Icon(Icons.person,size: 14,),
                      Text(
                      "Practically Usel..",
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
                Icon(Icons.bookmark_border_rounded,size: 14,),
              ],
            ),
        ],
      ),
    );
  }
}