//import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:profilepage/home.dart';
import 'package:profilepage/work.dart';
import 'package:profilepage/profile.dart';
import 'package:profilepage/loginpage.dart';
import 'package:profilepage/player_profile.dart';

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  //const home({super.key});
  List<Widget> pages = [
    home(),
    loginpage(),
    profile(),
    player_profile(),
    work()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff2f232f),
        //unselectedItemColor: Color(0xff00665C),
        //backgroundColor: Color(0xff2f232f),

        showSelectedLabels: true,
        selectedFontSize: 20,
        iconSize: 35,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff2f232f),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.login_outlined,
                color: Color(0xff2f232f),
              ),
              label: "Log in"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff2f232f),
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_basketball_sharp,
              color: Color(0xff2f232f),
            ),
            label: "Sports",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Color(0xff2f232f),
            ),
            label: "Record",
          )
        ],
      ),
    );
  }
}
