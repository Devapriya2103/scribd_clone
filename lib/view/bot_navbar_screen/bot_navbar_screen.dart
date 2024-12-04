import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/view/account_screen/account_screen.dart';
import 'package:scribd_clone/view/discover_screen/discover_screen.dart';
import 'package:scribd_clone/view/home_screen/home_screen.dart';
import 'package:scribd_clone/view/saved_screen/saved_screen.dart';

class BotNavbarScreen extends StatefulWidget {
  const BotNavbarScreen({super.key});

  @override
  State<BotNavbarScreen> createState() => _BotNavbarScreenState();
}

class _BotNavbarScreenState extends State<BotNavbarScreen> {

  int selectedindex = 0;
  List <Widget> container = [
    HomeScreen(),
    DiscoverScreen(),
    SavedScreen(),
    AccountScreen(),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: container[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.PRIMARY,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border),label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Account"),
        ],
      ),
    );
  }
}