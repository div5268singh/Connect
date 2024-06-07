import 'package:connect/chat.dart';
import 'package:connect/dashbord.dart';
import 'package:connect/profile.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _nav();
}

class _nav extends State<nav> {
  int currentindex = 1;
  final screens = [
    prof(),
    dash(),
    chat(),
  ];

  get onPressed =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => onPressed(),
        child: Scaffold(
            body: screens[currentindex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) => setState(() => currentindex = index),
              currentIndex: currentindex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded),
                  label: "Profile",
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: "Dashboard",
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: "Chat",
                  backgroundColor: Colors.transparent,
                ),
              ],
              selectedItemColor: Colors.black,
            )));
  }
}
